import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_129
  (a : ℝ)
  (h₀ : a ≠ 0)
  (h₁ : 8⁻¹ / 4⁻¹ - a⁻¹ = 1) :
  a = -2 :=
begin
  field_simp at h₁,
  linarith,
end