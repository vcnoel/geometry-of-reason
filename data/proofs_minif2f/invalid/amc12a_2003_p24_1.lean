import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2003_p24 :
  is_greatest {y : ℝ | ∃ (a b : ℝ), 1 < b ∧ b ≤ a ∧ y = real.logb a (a/b) + real.logb b (b/a)} 0 :=
begin

  have H1 : ∀ (y : ℝ), y ∈ {y : ℝ | ∃ (a b : ℝ), 1 < b ∧ b ≤ a ∧ y = real.logb a (a/b) + real.logb b (b/a)},
    by {
      intros y,
      by_cases (y = 0),
      { exact absurd rfl (not_real_logb_pos_zero 0 0), },
      { rw ← real.logb_pos at H,
        cases H with a b,
        cases H with H1 H2,
        cases H2 with H2 H3,
        cases H3 with H3 H4,
        have H5 : b = a,
        by {
          have H6 : b ≤ a,
          from H2,
          have H7 : a ≤ b,
          from H3,
          have H8 : a = b,
          from le_antisymm H6 H7,
          exact H8,
        },
        have H9 : y = real.logb a (a/a) + real.logb a (a/a),
        by {
          rw H5,
          rw H4,
          rw real.logb_self,
          rw real.logb_self,
        },
       
end
