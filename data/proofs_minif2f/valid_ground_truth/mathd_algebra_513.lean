import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_513
  (a b : ℝ)
  (h₀ : 3 * a + 2 * b = 5)
  (h₁ : a + b = 2) :
  a = 1 ∧ b = 1 :=
begin
  split; linarith,
end