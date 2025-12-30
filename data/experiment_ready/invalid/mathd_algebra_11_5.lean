import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_11
  (a b : ℝ)
  (h₀ : a ≠ b)
  (h₁ : a ≠ 2 * b)
  (h₂ : (4 * a + 3 * b) / (a - 2 * b) = 5) :
  (a + 11 * b) / (a - b) = 2 :=
begin

  calc
    (a + 11 * b) / (a - b) = (4 * a + 3 * b) / (a - 2 * b) : by
      {field_simp, ring},
    _ = 5 : by assumption,
    _ = 2 : by {field_simp, ring},

end
