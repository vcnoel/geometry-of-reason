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

  /- First, we need to show that f(x) = (2 * x + 3) * (x - 4) + (2 * x + 3) * (x - 6) -/
  have h₂ : ∀ x, f x = (2 * x + 3) * (x - 4) + (2 * x + 3) * (x - 6),
  { intros x,
    rw h₀, },
  /- Next, we need to show that f(x) = 0 has 7/2 solutions -/
  have h₃ : ∑ y in (f⁻¹' {0}).to_finset, y = 7 / 2,
  { /- We use the Vieta's formula -/
    /- We first calculate the coefficient of the x^2 term -/
    have h₄ : (2 * x + 3) * (x - 4) + (2 * x + 3) * (x - 6) = (2 * x + 3) * (x^2 - 10 * x + 24),
    { rw [mul_assoc, mul_comm (2 * x + 3),
end
