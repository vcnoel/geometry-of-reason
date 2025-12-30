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

  -- Assume the opposite, i.e., b ≠ 0
  assume h_b_neq_zero : b ≠ 0,
  -- Multiply both sides of h₁ by b
  have h_a_b : a * b = 4 * b,
  from mul_eq_mul_left a b (by assumption),
  -- Add 2 * b * b to both sides of h_a_b
  have h_a_b_2b : a * b + 2 * b * b = 4 * b + 2 * b * b,
  from add_eq_add_left a * b (2 * b * b) (by assumption),
  -- Factor the left side of h_a_b_2b
  have h_a_b_2b_factored : (a + 2 * b) * b = 6 * b * b,
  from mul_add (a + 2 * b) b b (by assumption),
  -- Divide both sides of h_a_b_2b_factored by b
  have h_a_b_2b_divided : a + 2 * b = 6 * b,
  from div_eq_div_left (a + 2 * b) b (by assumption),
  --
end
