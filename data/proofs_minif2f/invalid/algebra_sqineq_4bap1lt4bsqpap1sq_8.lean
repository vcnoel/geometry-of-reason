import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_sqineq_4bap1lt4bsqpap1sq
  (a b : ℝ) :
  4 * b * (a + 1) ≤ 4 * b^2 + (a + 1)^2 :=
begin

  -- split the right-hand side
  split,
  { -- first, consider the case when a + 1 = 0
    intro a_eq_0,
    -- if a + 1 = 0, then a = -1
    have a_eq_minus_1 : a = -1,
    { rw a_eq_0,
      refl },
    -- then the left-hand side is 0
    have lhs_eq_0 : 4 * b * (a + 1) = 0,
    { rw a_eq_minus_1,
      simp },
    -- and the right-hand side is 4 * b^2
    have rhs_eq_4b2 : 4 * b^2 + (a + 1)^2 = 4 * b^2,
    { rw a_eq_minus_1,
      simp },
    -- so the inequality is trivially true
    exact lhs_eq_0.trans (le_refl 0).trans rhs_eq_4b2 },
  { -- now, consider the case when a + 1 ≠ 0
    intro a_ne_0,
    -- in this case, we can divide both sides by a + 1
    have lhs_div_a
end
