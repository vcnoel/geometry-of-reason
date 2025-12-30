import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2003_p25
  (a b : ℝ)
  (f : ℝ → ℝ)
  (h₀ : 0 < b)
  (h₁ : ∀ x, f x = real.sqrt (a * x^2 + b * x))
  (h₂ : {x | 0 ≤ f x} = f '' {x | 0 ≤ f x}) :
  a = 0 ∨ a = -4 :=
begin

  cases (real.sqrt (a * 0^2 + b * 0)) with h₃ h₄,
  { refine or.inr (by {contradiction, simp only [h₁, h₃, zero_mul, zero_add], linarith}) },
  cases (real.sqrt (a * 1^2 + b * 1)) with h₅ h₆,
  { refine or.inl (by {contradiction, simp only [h₁, h₅, h₄, h₆, one_mul, one_add], linarith}) },
  cases (real.sqrt (a * (-1)^2 + b * (-1))) with h₇ h₈,
  { refine or.inr (by {contradiction, simp only [h₁, h₇, h₄, h₈, neg_mul, neg_add], linarith}) },
  cases (real.sqrt (a * 2^2 + b * 2)) with h₉ h₁₀,
  { refine or.inl (by {contradiction, simp only [h₁, h₉, h₅, h₆, h₄, h₁₀,
end
