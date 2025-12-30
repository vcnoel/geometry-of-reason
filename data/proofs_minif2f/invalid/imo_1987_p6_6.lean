import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1987_p6
  (p : ℕ)
  (f : ℕ → ℕ)
  (h₀ : ∀ x, f x = x^2 + x + p)
  (h₀ : ∀ k : ℕ, k ≤ nat.floor (real.sqrt (p / 3)) → nat.prime (f k)) :
  ∀ i ≤ p - 2, nat.prime (f i) :=
begin

  intros i h,
  by_cases h' : i < nat.floor (real.sqrt (p / 3)),
  { cases h' with h' h',
    { have h'' : i ≤ nat.floor (real.sqrt (p / 3)),
      by linarith,
      exact h₀ i h'',
    },
    { exact h₀ i h',
    },
  },
  { have h'' : i > nat.floor (real.sqrt (p / 3)),
    by linarith,
    have h''' : p = 3 * nat.floor (real.sqrt (p / 3)) + 1,
    by linarith,
    have h'''' : i = nat.floor (real.sqrt (p / 3)) + 1,
    by linarith,
    exact h₀ i h'',
  },

end
