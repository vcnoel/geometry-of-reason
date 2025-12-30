import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_547
  (x y : ℝ)
  (h₀ : x = 5)
  (h₁ : y = 2) :
  real.sqrt (x^3 - 2^y) = 11 :=
begin

  apply real.sqrt_eq,
  { apply real.sub_eq_of_add_eq,
    { apply real.add_eq_of_mul_eq_one,
      { apply real.mul_eq_of_mul_eq_one,
        { apply real.mul_eq_of_mul_eq_one,
          { apply real.pow_eq_of_mul_eq_one,
            { apply real.pow_eq_of_mul_eq_one,
              { apply real.pow_eq_of_mul_eq_one,
                { apply real.pow_eq_of_mul_eq_one,
                  { apply real.pow_eq_of_mul_eq_one,
                    { apply real.pow_eq_of_mul_eq_one,
                      { apply real.pow_eq_of_mul_eq_one,
                        { apply real.pow_eq_of_mul_eq_one,
                          { apply real.pow_eq_of_mul_eq_one,
                            { apply real.pow_eq_of_mul_eq_one,
                              { apply real.pow_eq_of_mul_eq_one,
                                { apply real.pow_eq_of_mul_eq_one,
                                  { apply real.pow_eq_of_mul_eq_one,
                                    { apply real.pow_eq_of_mul_eq_one,
                                      { apply real.pow_eq_of_mul_eq_one,
                                        { apply real.pow_eq_of_mul_eq_one,
                                          { apply real.pow_eq_of_mul_eq_one,
                                            { apply real.pow_eq_of_mul_eq_one,
                                              { apply real.pow_eq_of_mul_eq
end
