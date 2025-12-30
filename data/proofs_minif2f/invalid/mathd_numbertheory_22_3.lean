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

  have h₂ := nat.sqrt_eq_of_mul_eq b (10 * b + 6),
  have h₃ := nat.sqrt_eq_of_mul_eq 0 (10 * b + 6),
  have h₄ := nat.sqrt_eq_of_mul_eq b (10 * b + 6) (λ h, h₂ h),
  have h₅ := nat.sqrt_eq_of_mul_eq 0 (10 * b + 6) (λ h, h₃ h),
  have h₆ := nat.sqrt_eq_of_mul_eq b (10 * b + 6) (λ h, h₄ h),
  have h₇ := nat.sqrt_eq_of_mul_eq 0 (10 * b + 6) (λ h, h₅ h),
  have h₈ := nat.sqrt_eq_of_mul_eq b (10 * b + 6) (λ h, h₆ h),
  have h₉ := nat.sqrt_eq_of_mul_eq 0 (10 * b + 6) (λ h, h₇ h),
  have h₁₀ := nat.sqrt_eq_of_mul_eq b (10 * b + 6) (λ h, h₈ h),
  have h₁
end
