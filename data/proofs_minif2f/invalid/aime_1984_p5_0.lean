import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem aime_1984_p5
  (a b : ℝ)
  (h₀ : real.logb 8 a + real.logb 4 (b^2) = 5)
  (h₁ : real.logb 8 b + real.logb 4 (a^2) = 7) :
  a * b = 512 :=
begin

  have h₂ : 4 = 2^2 := by norm_num,
  have h₃ : 8 = 2^3 := by norm_num,

  have h₄ : a = 2^5 := by {
    rw [h₀, h₂, h₃] at h₁,
    simp only [pow_two, pow_three, add_log_eq_log_add, log_add_cancel, log_one, log_pow, mul_one] at h₁,
    rw [h₂, h₃] at h₁,
    rw [h₂, h₃] at h₁,
    rw [h₂, h₃] at h₁,
    rw [h₂, h₃] at h₁,
    rw [h₂, h₃] at h₁,
    rw [h₂, h₃] at h₁,
    rw [h₂, h₃] at h₁,
    rw [h₂, h₃] at h₁,
    rw [h₂, h₃] at h₁,
    rw [h₂, h₃] at h₁,
    rw [h₂, h₃] at h₁,
    rw [h₂, h₃] at h₁,
    rw
end
