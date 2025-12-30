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

  have h₂ : f (-3) = 3 * (-3)^2 + 7 * (-3) + 4,
  { rw h₀ },
  have h₃ : f (-3) = a * (-3)^2 + b * (-3) + c,
  { rw h₁ },
  have h₄ : f (-3) = a * 9 - 3 * b + c,
  { simp only [h₃] },
  have h₅ : f (-3) = 27 - 3 * b + c,
  { simp only [h₂] },
  have h₆ : 27 - 3 * b + c = a * 9 - 3 * b + c,
  { rw h₄ },
  have h₇ : 27 = a * 9,
  { rw h₆ },
  have h₈ : 27 = 9 * a,
  { rw h₇ },
  have h₉ : a = 3,
  { have h₁₀ : 9 * a = 27,
    { rw h₈ },
    have h₁₁ : a = 3,
    { solve [h₁₀]
end
