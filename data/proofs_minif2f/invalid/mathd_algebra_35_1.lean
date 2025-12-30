import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_35
  (p q : ℝ → ℝ)
  (h₀ : ∀ x, p x = 2 - x^2)
  (h₁ : ∀ x ≠ 0, q x = 6 / x) :
  p (q 2) = -7 :=
begin

  have h₂ : q 2 = 3,
  { have h₃ : 2 ≠ 0, by apply ne_of_gt,
    exact h₁ h₃ },
  have h₄ : p (q 2) = p 3,
  { rw h₂ },
  have h₅ : p 3 = 2 - 3^2,
  { exact h₀ 3 },
  have h₆ : 3^2 = 9,
  { apply pow_two },
  have h₇ : 2 - 9 = -7,
  { ring },
  exact h₇,

end
