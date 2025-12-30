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

  let f := λ k : ℕ, (1 / real.sin ((2^k) * x)) - (1 / real.sin ((2^(k + 1)) * x)),
  have hf : ∀ k : ℕ, 0 < k → f k = -(1 / real.sin ((2^k) * x)) + (1 / real.sin ((2^(k + 1)) * x)),
  { intro k,
    have h₂ : 0 < k + 1, from nat.succ_pos k,
    rw [f, sub_sub_cancel_left, sub_sub_cancel_right],
    simp only [real.sin_add, real.sin_pi, real.sin_two_pi, real.sin_inv, real.sin_mul],
    have h₃ : (2^(k + 1)) * x ≠ (2^k * π) / 2,
    { intro h₄,
      have h₅ : (2^(k + 1)) * x = (2^k * π) / 2,
      from h₄,
      have h₆ : (2^k) * π / 2 = (2^(k + 1)) * x,
      from h₅,
      have h
end
