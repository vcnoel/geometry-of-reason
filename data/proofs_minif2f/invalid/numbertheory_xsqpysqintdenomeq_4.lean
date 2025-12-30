import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem numbertheory_xsqpysqintdenomeq
  (x y : ℚ)
  (h₀ : (x^2 + y^2).denom = 1) :
  x.denom = y.denom :=
begin

  cases x with x_num x_denom,
  cases y with y_num y_denom,
  cases h₀,
  have h₀ : (x_num^2 + y_num^2).gcd x_denom = 1,
  { apply gcd_gcd,
    apply gcd_gcd,
    apply gcd_gcd,
    apply gcd_one },
  have h₁ : x_num^2 + y_num^2 = 1,
  { apply h₀,
    apply eq_of_gcd_eq_one },
  have h₂ : x_num = 0 ∧ y_num = 0,
  { apply and.intro,
    apply pow_eq_zero,
    apply h₁ },
  have h₃ : x_num.denom = y_num.denom,
  { apply h₂ },
  have h₄ : x_denom = y_denom,
  { apply h₂ },
  exact h₃,

end
