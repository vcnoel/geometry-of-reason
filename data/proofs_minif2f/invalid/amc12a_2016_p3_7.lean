import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2016_p3
  (f : ℝ → ℝ → ℝ)
  (h₀ : ∀ x, ∀ y ≠ 0, f x y = x - y * int.floor (x / y)) :
  f (3 / 8) (-(2 / 5)) = -(1 / 40) :=
begin

  have h₁ : - (2 / 5) ≠ 0 := by linarith,
  have h₂ : (3 / 8) - (- (2 / 5)) * int.floor ((3 / 8) / (- (2 / 5))) = -(1 / 40),
  { simp only [h₀, int.floor_eq_sub_one_of_lt, mul_neg, neg_div, sub_eq_add_neg],
    have h₃ : (3 / 8) / (- (2 / 5)) < 0,
    { have h₄ : (3 / 8) < 0 ∧ (- (2 / 5)) > 0 := by linarith,
      have h₅ : (3 / 8) / (- (2 / 5)) = -(3 / 8) * (2 / 5),
      { field_simp [h₄] },
      have h₆ : (-(3 / 8) * (2 / 5)) < 0,
      { have h₇ : (-(3 / 8)) * (2 / 5) = -(3 / 40),
        { field_simp },
        linarith },
      exact h�
end
