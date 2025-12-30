import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2003_p24 :
  is_greatest {y : ℝ | ∃ (a b : ℝ), 1 < b ∧ b ≤ a ∧ y = real.logb a (a/b) + real.logb b (b/a)} 0 :=
begin

  have h1 : ∀ (y : ℝ), ∃ (a b : ℝ), 1 < b ∧ b ≤ a ∧ y = real.logb a (a/b) + real.logb b (b/a),
  { assume y,
    let b := 1 + y,
    let a := 1 + b,
    have h2 : 1 < b,
    { rw [b],
      exact add_pos one_pos y_pos },
    have h3 : b ≤ a,
    { rw [a, b],
      exact add_le_add one_le_one add_le_add one_le_one y_le_y },
    have h4 : y = real.logb a (a/b) + real.logb b (b/a),
    { rw [a, b],
      ring },
    exact ⟨a, b, h2, h3, h4⟩ },
  have h5 : ∀ (y : ℝ), is_greatest {y | ∃ (a b : ℝ), 1 < b ∧ b ≤ a ∧ y = real.logb a (a/b) + real.logb b (b/a)} (real.logb (1 + y) ((1 + y) / (1 + y))),
 
end
