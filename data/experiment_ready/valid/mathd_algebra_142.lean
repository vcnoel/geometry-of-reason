import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_142
  (m b : ℝ)
  (h₀ : m * 7 + b = -1)
  (h₁ : m * (-1) + b = 7) :
  m + b = 5 :=
begin
  linarith,
end