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

  -- Since q 2 = 6 / 2 = 3, we have
  have h₂ : q 2 = 3,
  { rw [h₁, two_ne_zero],
    refl },
  -- so p (q 2) = p 3
  have h₃ : p (q 2) = p 3,
  { rw [h₂] },
  -- Since p 3 = 2 - 3^2 = 2 - 9 = -7, we have
  have h₄ : p 3 = -7,
  { simp [h₀] },
  -- so p (q 2) = -7
  have h₅ : p (q 2) = -7,
  { rw [h₃, h₄] },
  exact h₅,

end
