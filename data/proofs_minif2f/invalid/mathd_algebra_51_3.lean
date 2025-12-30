import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_51
  (a b : ℝ)
  (h₀ : 0 < a ∧ 0 < b)
  (h₁ : a + b = 35)
  (h₂ : a = (2/5) * b) :
  b - a = 15 :=
begin

  have h₃ : a ≠ 0, from h₀.left,
  have h₄ : b ≠ 0, from h₀.right,
  have h₅ : (a + b) ≠ 0, from dec_trivial,
  have h₆ : (2/5) * a ≠ a, from h₃,
  have h₇ : (2/5) * b ≠ b, from h₄,
  have h₈ : (2/5) * a + (3/5) * b = 35, from h₁,
  have h₉ : a = (2/5) * b, from h₂,
  have h₁₀ : a = (2/5) * b ∧ a ≠ 0, from and.intro h₉ h₃,
  have h₁₁ : b = (5/3) * a, from eq_subst h₁₀ h₂,
  have h₁₂ : a ≠ b, from ne_of_ne_of_eq h₃ h₄ h₁₁,
  have h₁₃ : a + b = (7/5) * a, from eq_subst h₁₁ h₈,
  have h₁�
end
