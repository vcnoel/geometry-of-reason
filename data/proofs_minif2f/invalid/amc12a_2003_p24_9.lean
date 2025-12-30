import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2003_p24 :
  is_greatest {y : ℝ | ∃ (a b : ℝ), 1 < b ∧ b ≤ a ∧ y = real.logb a (a/b) + real.logb b (b/a)} 0 :=
begin

  have h1 : ∀ y : ℝ, ∃ a b : ℝ, 1 < b ∧ b ≤ a ∧ y = real.logb a (a/b) + real.logb b (b/a),
  { intro y,
    cases (real.exists_pos (λ x, 1 < x ∧ x ≤ 1 + y)) with b hb,
    { let a := 1 + y,
      use [a, b],
      split,
      { exact hb.1 },
      { exact hb.2 },
      { rw [real.logb_add, real.logb_logb],
        exact hb.2 },
      { rw [real.logb_add, real.logb_logb],
        exact hb.1 }},
    { use 1, use 1,
      split,
      { exact (1 : ℝ).pos },
      { exact (1 : ℝ).le },
      { rw [real.logb_add, real.logb_logb],
        exact (1 : ℝ).le }}},
  have h2 : ∀ y : ℝ, {y | ∃ (a b : ℝ), 1 < b ∧ b ≤ a ∧ y = real.logb a (a/b) + real.logb b (
end
