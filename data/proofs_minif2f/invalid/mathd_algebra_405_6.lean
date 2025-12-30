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

  have h₁ : ∀ x, x ∈ S ↔ 0 < x ∧ x^2 + 4 * x + 4 < 20,
  { exact h₀ },
  have h₂ : ∀ x, x ∈ S → 0 < x ∧ x^2 + 4 * x + 4 < 20,
  { assume x hx,
    exact h₁ x hx },
  have h₃ : ∀ x, x ∈ S → x^2 + 4 * x + 4 < 20,
  { assume x hx,
    exact h₂ x hx },
  have h₄ : ∀ x, x ∈ S → 0 < x,
  { assume x hx,
    exact h₂ x hx },
  have h₅ : ∀ x, x ∈ S → x^2 + 4 * x + 4 ≠ 20,
  { assume x hx,
    exact ne_of_lt (h₃ x hx) },
  have h₆ : ∀ x, x ∈ S → x^2 + 4 * x + 4 ≠ 0,
  { assume x hx,
    exact ne_of_lt (h₄ x hx) },
  have h₇ : ∀ x,
end
