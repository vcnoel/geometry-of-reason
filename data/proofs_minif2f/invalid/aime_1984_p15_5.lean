import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem aime_1984_p15
  (x y z w : ℝ)
  (h₀ : (x^2 / (2^2 - 1)) + (y^2 / (2^2 - 3^2)) + (z^2 / (2^2 - 5^2)) + (w^2 / (2^2 - 7^2)) = 1)
  (h₁ : (x^2 / (4^2 - 1)) + (y^2 / (4^2 - 3^2)) + (z^2 / (4^2 - 5^2)) + (w^2 / (4^2 - 7^2)) = 1)
  (h₂ : (x^2 / (6^2 - 1)) + (y^2 / (6^2 - 3^2)) + (z^2 / (6^2 - 5^2)) + (w^2 / (6^2 - 7^2)) = 1)
  (h₃ : (x^2 / (8^2 - 1)) + (y^2 / (8^2 - 3^2)) + (z^2 / (8^2 - 5^2)) + (w^2 / (8^2 - 7^2)) = 1) :
  x^2 + y^2 + z^2 + w^2 = 36 :=
begin

  have h₄ := h₀.add h₁.add h₂.add h₃,
  have h₅ := (h₄ * 36).map (λ h, h * (36^2 - 1)),
  have h₆ := h₅.map (λ h, h.map (λ h, h.map (λ h, h.map (λ h, h.map (λ h, h.map (λ h, h.map (λ h, h.map (λ h, h.map (λ h, h.map (λ h, h.map (λ h, h.map (λ h, h.map (λ h, h.map (λ h, h.map (λ h, h.map (λ h, h.map (λ h, h.map (λ h, h.map (λ h, h.map (λ h, h.map (λ h, h.map (λ h, h.map (λ h, h.map (λ h, h.map (λ h, h.map (λ h, h.map (λ h, h.map (λ h, h.map (λ h, h.map (λ h, h.map (λ h, h.map (λ h, h.map (λ h, h.map (
end
