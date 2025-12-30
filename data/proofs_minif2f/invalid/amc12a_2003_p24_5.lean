import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2003_p24 :
  is_greatest {y : ℝ | ∃ (a b : ℝ), 1 < b ∧ b ≤ a ∧ y = real.logb a (a/b) + real.logb b (b/a)} 0 :=
begin

  let y : ℝ := 0,
  let a := 1,
  let b := 1,
  have hy : y = real.logb a (a/b) + real.logb b (b/a),
  { rw [real.logb, real.logb, real.logb, real.logb, real.logb, real.logb, real.logb, real.logb],
    simp },
  have h1 : 1 < b,
  { simp },
  have h2 : b ≤ a,
  { simp },
  have h3 : is_greatest {y | ∃ (a b : ℝ), 1 < b ∧ b ≤ a ∧ y = real.logb a (a/b) + real.logb b (b/a)} y,
  { intros z hz,
    rw hz,
    intros a b h1 h2,
    have h4 : z = real.logb a (a/b) + real.logb b (b/a),
    { rw hz },
    have h5 : y ≤ z,
    { apply le_trans,
      { apply le_of_eq,
        simp },
      { apply add_le_add,
        { apply le_of_eq,
          simp },
        {
end
