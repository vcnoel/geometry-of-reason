import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2008_p2
  (x : ℝ)
  (h₀ : x * (1 / 2 + 2 / 3) = 1) :
  x = 6 / 7 :=
begin

  let g = minif2f (x * (1 / 2 + 2 / 3), 1) (x * (1 / 2 - 2 / 3), 1),
  let g₀ = minif2f (x * (1 / 2 + 2 / 3), 1) (x * (1 / 2 - 2 / 3), 0),
  let g₁ = minif2f (x * (1 / 2 - 2 / 3), 1) (x * (1 / 2 + 2 / 3), 0),
  let g₂ = minif2f (x * (1 / 2 - 2 / 3), 0) (x * (1 / 2 + 2 / 3), 0),
  let g₃ = minif2f (x * (1 / 2 + 2 / 3), 0) (x * (1 / 2 - 2 / 3), 0),
  let g₄ = minif2f (x * (1 / 2 + 2 / 3), 0) (x * (
end
