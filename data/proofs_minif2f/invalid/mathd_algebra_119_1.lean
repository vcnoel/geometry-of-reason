import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_119
  (d e : ℝ)
  (h₀ : 2 * d = 17 * e - 8)
  (h₁ : 2 * e = d - 9) :
  e = 2 :=
begin

  have h₂ := add_eq_zero_iff_eq_neg.mp
    (add_eq_zero.mp
      (add_sub_cancel (17 * e) (8)
       .symm ▸ add_sub_cancel (17 * e) (17 * e + 9)
       .symm ▸ sub_eq_add_neg.mp
          (eq_sub_sub_left (17 * e + 9) (17 * e)
           .symm ▸ h₀ ▸ h₁))),
  exact eq_zero_of_eq_neg h₂,

end
