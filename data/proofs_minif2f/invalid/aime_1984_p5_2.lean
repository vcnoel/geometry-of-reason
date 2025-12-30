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

  have h₂ : a^2 * b^2 = 512^2,
  from (h₁.simplify.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log_add.log
end
