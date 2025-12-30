import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2010_p22
  (x : ℝ) :
  49 ≤ ∑ k in finset.Icc 1 119, abs (↑k * x - 1) :=
begin

  let s := finset.Icc 1 119,
  let f : s → ℝ := λ k, abs (↑k * x - 1),
  have h1 : f 1 = abs (1 * x - 1),
  { simp },
  have h2 : f 119 = abs (119 * x - 1),
  { simp },
  have h3 : ∀ k in s, k * x - 1 ≤ 0,
  { intro k,
    by_cases h4 : 0 ≤ k,
    { have h5 : 0 ≤ k * x,
      { rw mul_nonneg,
        exact and.intro h4 (le_of_lt x_pos) },
      have h6 : k * x - 1 ≤ 0,
      { have h7 : 1 ≤ k * x,
        { have h8 : 1 ≤ k * x - 1,
          { rw sub_le_sub,
            exact and.intro h8 (le_of_lt x_pos) },
          have h9 : 1 ≤ (k * x - 1) + 1,
          { simp },
          have h10 : 1 ≤ k * x,
          { rw add_le_add,

end
