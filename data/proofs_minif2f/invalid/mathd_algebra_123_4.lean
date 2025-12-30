import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_123
  (a b : ℕ)
  (h₀ : 0 < a ∧ 0 < b)
  (h₁ : a + b = 20)
  (h₂ : a = 3 * b) :
  a - b = 10 :=
begin

  have h₃ : a = 15, from
    eq.trans (eq.subst h₂ (eq.symm h₁)) (eq.refl 20),
  have h₄ : b = 5, from
    eq.subst (eq.symm h₃) (eq.subst h₁ (eq.refl 20)),
  have h₅ : a - b = 10, from
    eq.subst (eq.subst (eq.subst h₂ h₄) h₃) (eq.refl 20),
  exact h₅,

end
