import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_440
  (x : ℝ)
  (h₀ : 3 / 2 / 3 = x / 10) :
  x = 5 :=
begin
  field_simp at h₀,
  linarith,
end