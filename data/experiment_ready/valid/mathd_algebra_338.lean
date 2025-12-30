import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_338
  (a b c : ℝ)
  (h₀ : 3 * a + b + c = -3)
  (h₁ : a + 3 * b + c = 9)
  (h₂ : a + b + 3 * c = 19) :
  a * b * c = -56 :=
begin
  have ha : a = -4, linarith,
  have hb : b = 2, linarith,
  have hc : c = 7, linarith,
  rw [ha, hb, hc],
  norm_num,
end