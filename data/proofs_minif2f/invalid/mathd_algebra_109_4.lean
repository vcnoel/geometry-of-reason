import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_109
  (a b : ℝ)
  (h₀ : 3 * a + 2 * b = 12)
  (h₁ : a = 4) :
  b = 0 :=
begin

  rw h₁ at h₀,
  -- rewrite 3 * 4 + 2 * b = 12
  rw mul_three_four at h₀,
  -- rewrite 12 + 2 * b = 12
  rw add_zero at h₀,
  -- rewrite 2 * b = 0
  rw mul_zero at h₀,
  -- rewrite b = 0
  exact h₀,

end
