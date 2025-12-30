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

  have h₂ := real.logb_add_eq_add_logb h₀,
  have h₃ := real.logb_add_eq_add_logb h₁,
  have h₄ := real.logb_mul_eq_add_logb (real.logb 8 a) (real.logb 4 (b^2)),
  have h₅ := real.logb_mul_eq_add_logb (real.logb 8 b) (real.logb 4 (a^2)),
  have h₆ := real.logb_mul_eq_add_logb (real.logb 8 b) (real.logb 4 (a^2)),
  have h₇ := real.logb_mul_eq_add_logb (real.logb 8 b) (real.logb 4 (a^2)),
  have h₈ := real.logb_mul_eq_add_logb (real.logb 8 b) (real.logb 4 (a^2)),
  have h₉ := real.logb_mul_eq_add_logb (real.logb 8 b) (real.logb 4 (a^2)),
  have h₁₀ := real.logb_mul_eq_add_logb (real.logb 8 b) (real.logb
end
