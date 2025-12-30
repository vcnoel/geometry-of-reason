import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_405
  (S : finset ℕ)
  (h₀ : ∀ x, x ∈ S ↔ 0 < x ∧ x^2 + 4 * x + 4 < 20) :
  S.card = 2 :=
begin

  have h₁ : ∀ x, x ∈ S → 0 < x ∧ x^2 + 4 * x + 4 < 20,
  { intros x hx,
    exact h₀ hx },
  have h₂ : ∀ x, x ∈ S → 0 < x ∧ x < 4,
  { intros x hx,
    have h₃ : x^2 + 4 * x + 4 < 20,
      by simp [hx],
    have h₄ : x^2 + 4 * x + 4 > 0,
      by simp [hx],
    exact and.intro (h₁ x hx) (h₃.trans h₄),
    },
  have h₃ : ∀ x, x ∈ S → x = 2 ∨ x = 3,
  { intros x hx,
    have h₄ : 0 < x,
      by exact h₂ x hx,
    have h₅ : x^2 + 4 * x + 4 < 20,
      by exact h₂ x hx,
    have h₆ : x^2 + 4 * x + 4 > 0,
      by exact h₂ x hx,
    have h₇ :
end
