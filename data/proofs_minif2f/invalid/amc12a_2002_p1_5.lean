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

  have h₂ : ∀ x, f x = (2 * x + 3) * (x - 4) + (2 * x + 3) * (x - 6) :=
    by intro; exact h₀ x,
  have h₃ : ∀ x, f x = 2 * (x - 4) * (2 * x + 3) + 2 * (x - 6) * (2 * x + 3),
  { intro x; ring },
  have h₄ : ∀ x, f x = 2 * (2 * x + 3) * (x - 4 + x - 6),
  { intro x; ring },
  have h₅ : ∀ x, f x = 2 * (2 * x + 3) * (2 * x - 10),
  { intro x; ring },
  have h₆ : ∀ x, f x = 2 * (2 * x + 3) * (2 * x - 10),
  { intro x; ring },
  have h₇ : ∀ x, f x = 4 * x^2 - 28 * x + 60,
  {
end
