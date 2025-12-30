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

  have h₅ : (a + b)^7 = a^7 + 7*a^6*b + 7*a^5*b^2 + 7*a^4*b^3 + 7*a^3*b^4 + 7*a^2*b^5 + 7*a*b^6 + b^7 := by ring,
  have h₆ : (a + b)^7 - a^7 - b^7 = 7*a^6*b + 7*a^5*b^2 + 7*a^4*b^3 + 7*a^3*b^4 + 7*a^2*b^5 + 7*a*b^6 := by ring,
  have h₇ : (7^7) ∣ (7*a^6*b + 7*a^5*b^2 + 7*a^4*b^3 + 7*a^3*b^4 + 7*a^2*b^5 + 7*a*b^6) := by { apply mul_left_distrib, exact h₄ },
  have h₈ : (7^7) ∣ (7*(a^6*b + a^5*b^2 + a^4
end
