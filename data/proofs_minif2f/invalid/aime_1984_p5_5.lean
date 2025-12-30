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

  have h₂ : real.logb 8 a + real.logb 4 (b^2) = 5,
  from h₀,
  have h₃ : real.logb 8 b + real.logb 4 (a^2) = 7,
  from h₁,
  have h₄ : real.logb 8 a = 5 - real.logb 4 (b^2),
  from h₂,
  have h₅ : real.logb 8 b = 7 - real.logb 4 (a^2),
  from h₃,
  have h₆ : real.logb 8 a = 5 - (2 * real.logb 2 b),
  from h₄,
  have h₇ : real.logb 8 b = 7 - (2 * real.logb 2 a),
  from h₅,
  have h₈ : real.logb 8 a = 5 - 2 * (real.logb 2 b),
  from h₆,
  have h₉ : real.logb 8 b = 7 - 2 * (real.logb 2 a),
  from h₇,
  have
end
