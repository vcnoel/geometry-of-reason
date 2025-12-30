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
  by_cases h' : 1 ≤ i,
  { exact h₀ (i - 1) (nat.lt_floor_add_one (h' : 1 ≤ i)), },
  { exact h₀ i (by linarith), },

end
