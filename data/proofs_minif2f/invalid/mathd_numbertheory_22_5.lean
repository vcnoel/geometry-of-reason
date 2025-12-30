import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_22
  (b : ℕ)
  (h₀ : b < 10)
  (h₁ : nat.sqrt (10 * b + 6) * nat.sqrt (10 * b + 6) = 10 * b + 6) :
  b = 3 ∨ b = 1 :=
begin

  cases h₁,
  { exact or.inl (eq.refl _),
    cases h₀,
    { exact or.inr (eq.refl _),
      exact absurd (nat.pos (10 * 0 + 6)) h₀ },
    { exact absurd (nat.pos (10 * 1 + 6)) h₀ },
    { exact absurd (nat.pos (10 * 2 + 6)) h₀ },
    { exact absurd (nat.pos (10 * 3 + 6)) h₀ },
    { exact absurd (nat.pos (10 * 4 + 6)) h₀ },
    { exact absurd (nat.pos (10 * 5 + 6)) h₀ },
    { exact absurd (nat.pos (10 * 6 + 6)) h₀ },
    { exact absurd (nat.pos (10 * 7 + 6)) h₀ },
    { exact absurd (nat.pos (10 * 8 + 6)) h₀ },
    { exact absurd (nat.pos (10 * 9 + 6)) h₀ } },
  { exact absurd (10 * b + 6) (nat.sqrt_le_sqrt_iff (le_of_lt h₀)) },

end
