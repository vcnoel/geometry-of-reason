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

  have h₂ := h₀.add h₁,
  have h₃ := real.logb_add (real.logb 8 a) (real.logb 4 (b^2)),
  have h₄ := real.logb_add (real.logb 8 b) (real.logb 4 (a^2)),
  have h₅ := h₃.add h₄,
  have h₆ := real.logb_eq_real_logb (real.logb 2 (a*b)) (real.logb 2 (512)),
  have h₇ := real.logb_eq_real_logb (real.logb 2 (b^2)) (real.logb 2 (256)),
  have h₈ := real.logb_eq_real_logb (real.logb 2 (a^2)) (real.logb 2 (128)),
  have h₉ := h₇.add h₈,
  have h₁₀ := h₇.add (real.logb_eq_real_logb (real.logb 2 (b^2)) (real.logb 2 (b^2))),
  have h₁₁ := real.logb_eq_real_logb (real.logb 2 (a*b))
end
