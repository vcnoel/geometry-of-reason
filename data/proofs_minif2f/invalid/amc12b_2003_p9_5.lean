import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12b_2003_p9
  (a b : ℝ)
  (f : ℝ → ℝ)
  (h₀ : ∀ x, f x = a * x + b)
  (h₁ : f 6 - f 2 = 12) :
  f 12 - f 2 = 30 :=
begin

  -- Given equation
  have h₂ : f 12 - f 2 = (a * 12 + b) - (a * 2 + b),
  { apply eq_sub_of_add_eq,
    simp only [h₀],
    ring },
  -- Substitution
  have h₃ : f 12 - f 2 = a * 10,
  { rw h₂,
    ring },
  -- Given equation
  have h₄ : f 6 - f 2 = 12,
  { rw h₁ },
  -- Substitution
  have h₅ : f 6 - f 2 = a * 4,
  { rw h₄,
    ring },
  -- Equating two expressions for f 6 - f 2
  have h₆ : a * 4 = a * 10,
  { rw [h₅, h₃] },
  -- Subtracting a * 4 from both sides
  have h₇ : a * 6 = 0,
  { rw [h₆, sub_eq_zero],
    ring },
  -- Dividing both sides by 6
  have h₈ : a = 0,
  { rw
end
