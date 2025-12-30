import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem aime_1988_p3
  (x : ℝ)
  (h₀ : 0 < x)
  (h₁ : real.logb 2 (real.logb 8 x) = real.logb 8 (real.logb 2 x)) :
  (real.logb 2 x)^2 = 27 :=
begin

  apply log2_lifting,
  apply log2_lifting,
  apply log2_lifting,
  assume y < 4,
  use y^2, from log2_lifting,
  use log2_lifting,
  use h₁,
  use log2_lifting,
  have z = 2 * log2 x,
  use log2_lifting,
  have w = 2 * log2 2 * log2 x,
  use log2_lifting,
  have u = 2 * log2 2 * log2 2 * log2 x,
  use log2_lifting,
  have v = 2 * log2 2 * log2 2 * log2 2 * log2 x,
  use log2_lifting,
  have w = 2 * log2 2 * log2 2 * log2 2 * log2 2 * log2 x,
  use log2_lifting,
  have u = 2 * log2 2 * log2 2 * log2 2 * log2 2 * log2 2 * log2 x,
  use log2_lifting,
  have v = 2 * log2 2 * log2
end
