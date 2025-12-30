import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_amgm_sumasqdivbsqgeqsumbdiva
  (a b c : ℝ)
  (h₀ : 0 < a ∧ 0 < b ∧ 0 < c) :
  a^2 / b^2 + b^2 / c^2 + c^2 / a^2 ≥ b / a + c / b + a / c :=
begin

  -- First, we rewrite the inequality to have all the terms on the left-hand side
  rw [div_add_div_div, div_add_div_div, div_add_div_div],
  -- Then, we factor the numerator of each term
  rw [pow_sub, pow_sub, pow_sub, pow_sub, pow_sub, pow_sub, pow_sub],
  -- Now, we can simplify each term
  rw [add_sub_assoc, add_sub_assoc, add_sub_assoc, add_sub_assoc, add_sub_assoc, add_sub_assoc],
  -- Next, we move all the terms to the right-hand side
  rw [add_sub_cancel, add_sub_cancel, add_sub_cancel, add_sub_cancel, add_sub_cancel, add_sub_cancel],
  -- Now, we use the triangle inequality to get a lower bound for each term
  apply big_or_lt,
  { apply (big_or_lt (a^2) (b^2)).1 },
  { apply (big_or_lt (b^2) (c^2)).1 },
  { apply (big_or_lt (c^2) (a^2)).1 },
  -- Now, we can add up the lower bounds
  apply add_le_add,
  { apply add_le
end
