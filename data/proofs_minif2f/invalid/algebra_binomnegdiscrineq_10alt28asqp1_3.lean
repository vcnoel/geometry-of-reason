import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_binomnegdiscrineq_10alt28asqp1
  (a : ℝ) :
  10 * a ≤ 28 * a^2 + 1 :=
begin

  have ha : 0 ≤ a^2,
  { apply pow_nonneg,
    assumption, },
  have ha1 : 0 ≤ a,
  { apply pow_nonneg,
    assumption, },
  have ha2 : a^2 ≤ a,
  { apply le_of_eq,
    { apply pow_le_pow,
      { assumption, },
      { apply le_refl, }, },
    { apply le_refl, }, },
  have ha3 : 10 ≤ 28 * a^2,
  { apply mul_le_mul,
    { apply le_refl, },
    { apply mul_nonneg,
      { assumption, },
      { apply ha, }, },
    { apply ha2, }, },
  have ha4 : 10 ≤ 28 * a^2 + 1,
  { apply le_add_of_le_of_le,
    { assumption, },
    { apply le_refl, }, },
  have ha5 : 10 * a ≤ 28 * a^2 + 1,
  { apply mul_le_mul,
    { apply ha1, },
    { apply ha4, }, },
  exact ha5,

end
