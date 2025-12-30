import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_44
  (s t : ℝ)
  (h₀ : s = 9 - 2 * t)
  (h₁ : t = 3 * s + 1) :
  s = 1 ∧ t = 4 :=
begin
  split; linarith,
end