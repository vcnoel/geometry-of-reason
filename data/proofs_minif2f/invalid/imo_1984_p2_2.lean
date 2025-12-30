import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1984_p2
  (a b : ℕ)
  (h₀ : 0 < a ∧ 0 < b)
  (h₁ : ¬ 7 ∣ a)
  (h₂ : ¬ 7 ∣ b)
  (h₃ : ¬ 7 ∣ (a + b))
  (h₄ : (7^7) ∣ ((a + b)^7 - a^7 - b^7)) :
  19 ≤ a + b :=
begin

  have h₅ : (a + b) ≠ 7,
  by { rintro rfl, exact h₃ },
  have h₆ : (a + b) ≠ 0,
  by { rintro rfl, exact h₀.left },
  have h₇ : (a + b) ≠ 1,
  by { rintro rfl, exact h₀.left },
  have h₈ : (a + b) ≠ 2,
  by { rintro rfl, exact h₀.left },
  have h₉ : (a + b) ≠ 3,
  by { rintro rfl, exact h₀.left },
  have h₁₀ : (a + b) ≠ 4,
  by { rintro rfl, exact h₀.left },
  have h₁₁ : (a + b) ≠ 5,
  by { rintro rfl, exact h₀.left },
  have h₁₂ : (a + b) ≠ 6,
  by { rintro rfl, exact h₀.left },
  have h₁₃ : (a + b) ≠ 8,
  by { rintro rfl, exact h₀.left },
  have h₁₄ : (a + b) ≠ 
end
