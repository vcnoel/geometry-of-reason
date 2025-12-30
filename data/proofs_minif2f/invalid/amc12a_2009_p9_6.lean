import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2009_p9
  (a b c : ℝ)
  (f : ℝ → ℝ)
  (h₀ : ∀ x, f (x + 3) = 3 * x^2 + 7 * x + 4)
  (h₁ : ∀ x, f x = a * x^2 + b * x + c) :
  a + b + c = 2 :=
begin

  have h₂ : ∀ x, f (x + 3) = a * (x + 3)^2 + b * (x + 3) + c,
  { intro x,
    rw [h₁, h₁, h₁],
    simp [h₀, pow_two, mul_assoc, mul_comm, add_assoc, add_comm, add_assoc, add_assoc] },
  have h₃ : ∀ x, a * (x + 3)^2 + b * (x + 3) + c = a * (x^2 + 6 * x + 9) + b * (x + 3) + c,
  { intro x,
    rw [pow_two, pow_two, mul_assoc, mul_comm, add_assoc, add_comm, add_assoc, add_assoc] },
  have h₄ : ∀ x, a * (x^2 + 6 * x + 9) + b * (x + 3) + c = 3 * x^2 + 7 * x + 4,
  { intro x,
    rw [h₂, h₃],
    simp },
  have h₅ : ∀ x, a * x^2 + b *
end
