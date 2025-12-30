import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_427
  (x y z : ℝ)
  (h₀ : 3 * x + y = 17)
  (h₁ : 5 * y + z = 14)
  (h₂ : 3 * x + 5 * z = 41) :
  x + y + z = 12 :=
begin
  have h₃ := congr (congr_arg has_add.add h₀) h₁,
  linarith,
end