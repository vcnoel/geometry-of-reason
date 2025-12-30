import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_28
  (c : ℝ)
  (f : ℝ → ℝ)
  (h₀ : ∀ x, f x = 2 * x^2 + 5 * x + c)
  (h₁ : ∃ x, f x ≤ 0) :
  c ≤ 25/8 :=
begin

  by_contra h,
  have h₂ : ∀ x, f x > 0,
  { intros x,
    apply h,
    apply h₀ },
  obtain ⟨x, hx⟩ := h₁,
  have h₃ : 2 * x^2 + 5 * x + c > 0,
  { apply h₂ },
  have h₄ : x^2 + 5/2 * x + c/2 > 0,
  { apply h₃,
    ring },
  have h₅ : (x + 5/4)^2 + c/2 - 25/16 > 0,
  { apply h₄,
    ring },
  have h₆ : (x + 5/4)^2 > 25/16 - c/2,
  { apply h₅,
    linarith },
  have h₇ : x + 5/4 > 5/4,
  { apply h₆,
    linarith },
  have h₈ : x > 0,
  { apply h₇,
    linarith },
  have h₉ : ∃ x, f x > 0,
  { apply h₈ },
  contradiction
end
