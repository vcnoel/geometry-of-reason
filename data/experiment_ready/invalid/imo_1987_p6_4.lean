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

  intro i,
  intro hi,
  let k := i + 1,
  let h₁ : i ≤ nat.floor (real.sqrt (p / 3)) := by
  { calc
      i ≤ i : le_refl i
     ... ≤ nat.floor (real.sqrt (p / 3)) : h₀
  },
  let h₂ : k ≤ nat.floor (real.sqrt (p / 3)) := by
  { calc
      k ≤ nat.floor (real.sqrt (p / 3)) : h₁
     ... ≤ nat.floor (real.sqrt (p / 3)) : le_refl _
  },
  have h₃ : k ≤ k - 1, from le_sub_right_of_add_le hi,
  have h₄ : k - 1 < k, from lt_sub_right_of_add_lt hi,
  have h₅ : k - 1 ≤ nat.floor (real.sqrt (p / 3)), from h₂,
  have h₆ : k - 1 < nat.floor (real.sqrt (p / 3)), from lt_floor_of_lt h₄,
  have h₇ : f (k - 1) ≠ 1, from λ h, by
end
