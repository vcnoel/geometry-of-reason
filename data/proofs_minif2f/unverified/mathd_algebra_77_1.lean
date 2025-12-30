import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_77
  (a b : ℝ)
  (f : ℝ → ℝ)
  (h₀ : a ≠ 0 ∧ b ≠ 0)
  (h₁ : ∀ x, f x = x^2 + a * x + b)
  (h₂ : f a = 0)
  (h₃ : f b = 0) :
  a = 1 ∧ b = -2 :=
begin

  have h₄ : a ≠ b, from
    mt (eq_imp_eq_of_eq_sub_eq h₁ h₂ h₃) h₀.left,
  have h₅ : a ≠ -b, from
    mt (eq_imp_eq_of_eq_sub_eq h₁ h₂ h₃) h₀.right,
  have h₆ : f a ≠ 0 ∨ f b ≠ 0, from
    or.inl h₂,
  have h₇ : f a ≠ 0 ∨ f b ≠ 0, from
    or.inr h₃,
  have h₈ : f a ≠ f b, from
    or.elim h₆ (or.elim h₇ (or.inl (ne_of_eq h₄)) (or.inr (ne_of_eq h₅))),
  have h₉ : ∃ (x : ℝ), f x = f a ∧ f x ≠ f b, from
    exists.intro 0 (and.intro h₂ h₈),
  have h₁₀ : ∀ (x : ℝ), f x ≠ f a ∧ f x ≠ f b → f x ≠ 0 ∧ f x ≠ 0, from
    λ x hx
end
