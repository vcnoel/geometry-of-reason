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
  { intro x,
    intro hx,
    exact h₀ x hx },
  have h₂ : ∀ x, x ∈ S → x^2 + 4 * x + 4 = (x + 2)^2,
  { intro x,
    intro hx,
    rw [pow_two, pow_two],
    exact hx },
  have h₃ : ∀ x, x ∈ S → (x + 2)^2 < 20,
  { intro x,
    intro hx,
    exact h₁ x hx },
  have h₄ : ∀ x, x ∈ S → (x + 2)^2 ≤ 20,
  { intro x,
    intro hx,
    exact h₃ x hx },
  have h₅ : ∀ x, x ∈ S → (x + 2)^2 = 20,
  { intro x,
    intro hx,
    exact absurd (h₄ x hx) (h₃ x hx) },
  have h₆ : ∀ x, x ∈ S → (x + 2) = ±√20,
 
end
