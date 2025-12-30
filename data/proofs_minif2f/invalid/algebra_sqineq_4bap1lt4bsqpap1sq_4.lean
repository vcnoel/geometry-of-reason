import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_sqineq_4bap1lt4bsqpap1sq
  (a b : ℝ) :
  4 * b * (a + 1) ≤ 4 * b^2 + (a + 1)^2 :=
begin

  have h1 : 0 ≤ a + 1 := by linarith,
  have h2 : 0 ≤ b := by linarith,
  have h3 : 0 ≤ 4 * b := by linarith,
  have h4 : 0 ≤ a + 1^2 := by linarith,
  have h5 : 0 ≤ 4 * b^2 := by linarith,
  have h6 : 0 ≤ (a + 1)^2 := by linarith,
  have h7 : 0 ≤ 4 * b * (a + 1) := by linarith,
  have h8 : 0 ≤ 4 * b^2 + (a + 1)^2 := by linarith,
  have h9 : 4 * b * (a + 1) ≤ 4 * b^2 + (a + 1)^2 := by linarith,
  exact h9,

end
