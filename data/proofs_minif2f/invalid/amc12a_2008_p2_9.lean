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

  let g : ℝ → ℝ by λ y, (y - x) / (y * (1 / 2 + 2 / 3)),

  let f : ℝ → ℝ by λ y, (y - 1) / (y * (1 / 2 + 2 / 3)),

  let h : ℝ → ℝ by λ y, (y - 1) / (y * (1 / 2 + 2 / 3)),

  let g' : ℝ → ℝ by λ y, (y - 1) / (y * (1 / 2 + 2 / 3)),

  let f' : ℝ → ℝ by λ y, (y - 1) / (y * (1 / 2 + 2 / 3)),

  let h' : ℝ → ℝ by λ y, (y - 1) / (y * (1 / 2 + 2 / 3)),

  let g'' : ℝ → ℝ by λ y, (y - 1) / (y * (1 / 2 + 2 / 3)),

  let f'' : ℝ → ℝ by λ y, (y -
end
