import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12_2000_p11
  (a b : ℝ)
  (h₀ : a ≠ 0 ∧ b ≠ 0)
  (h₁ : a * b = a - b) :
  a / b + b / a - a * b = 2 :=
begin

  have h₂ : a * b ≠ 0,
    by { rintro rfl, exact h₀.1 },
  have h₃ : (a - b) ≠ 0,
    by { rintro rfl, exact h₀.2 },
  have h₄ : a ≠ b,
    by { rintro rfl, exact (h₁ rfl).ne },
  have h₅ : a ≠ 0 ∧ b ≠ 0,
    by { apply h₀ },
  have h₆ : (a - b) * (a + b) = a * (a + b) - b * (a + b),
    by { ring },
  have h₇ : (a - b) * (a + b) = a * a + a * b - b * a - b * b,
    by { ring },
  have h₈ : a * (a + b) - b * (a + b) = a * a + a * b - b * a - b * b,
    by { ring },
  have h₉ : (a - b) * (a + b) = a * a + a * b - b * a - b * b,
    by
end
