import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2002_p1
  (f : ℂ → ℂ)
  (h₀ : ∀ x, f x = (2 * x + 3) * (x - 4) + (2 * x + 3) * (x - 6))
  (h₁ : fintype (f ⁻¹' {0})) :
  ∑ y in (f⁻¹' {0}).to_finset, y = 7 / 2 :=
begin

  have h₂ : ∀ x, f x = (2 * x + 3) * (x - 4) + (2 * x + 3) * (x - 6),
  from λ x, h₀ x,

  have h₃ : ∀ x, f x = 2 * (2 * x + 3) * (x - 4),
  from λ x, (h₂ x).symm ▸ (mul_add _ _ _).symm ▸ (mul_add _ _ _),

  have h₄ : ∀ x, f x = 2 * (2 * x + 3) * (x - 4),
  from λ x, (h₃ x).symm ▸ (mul_assoc _ _ _).symm ▸ (mul_assoc _ _ _),

  have h₅ : ∀ x, f x = 2 * (2 * x + 3) * (x - 4),
  from λ x, (h₄ x).symm ▸ (mul_assoc _ _ _),

  have h₆ : ∀ x, f x = 2 * (2 * x + 3) * (x - 4),

end
