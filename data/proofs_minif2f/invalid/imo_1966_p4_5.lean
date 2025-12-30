import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1966_p4
  (n : ℕ)
  (x : ℝ)
  (h₀ : ∀ k : ℕ, 0 < k → ∀ m : ℤ, x ≠ m * π / (2^k))
  (h₁ : 0 < n) :
  ∑ k in finset.Icc 1 n, (1 / real.sin ((2^k) * x)) = 1 / real.tan x - 1 / real.tan ((2^n) * x) :=
begin

  let f := λ k : ℕ, 1 / real.sin ((2^k) * x),
  have h₂ : ∀ k : ℕ, 0 < k → f k = (1 / real.tan ((2^k) * x)) - (1 / real.tan ((2^(k+1)) * x)),
  { intros k hk,
    calc f k
      = 1 / real.sin ((2^k) * x) : rfl
   ... = (1 / real.tan ((2^k) * x)) - (1 / real.tan ((2^(k+1)) * x)) : by
      { rw [real.tan_add_inv, real.sin_add_inv, real.tan_one_div_sin, real.tan_add_inv],
        simp [real.pi, real.tan_two_x] } },
  have h₃ : ∀ k : ℕ, 0 < k → ∑ j in finset.Icc k (k+1), f j = (1 / real.tan ((2^k) * x)) - (1 / real.tan ((2^(k+1)) * x)),
  { intros k hk,
    apply finset.sum_congr rfl
end
