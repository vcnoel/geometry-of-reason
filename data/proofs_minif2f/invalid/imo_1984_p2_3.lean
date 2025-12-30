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

  have h₁' : (7 : ℤ) ∤ (a + b),
  { rw [← int.of_nat_eq_coe, int.dvd_iff_dvd_of_nat],
    exact h₃ },
  have h₂' : (7 : ℤ) ∤ (a - b),
  { rw [← int.of_nat_eq_coe, int.dvd_iff_dvd_of_nat],
    exact mt (dvd_neg_of_dvd_neg) h₂ },
  have h₃' : (7 : ℤ) ∤ (a + b) + (a - b),
  { exact mt (dvd_add _ _ _) h₁' },
  have h₄' : (7 : ℤ) ∤ (2 * a),
  { exact mt (dvd_mul _ _ _) h₁ },
  have h₅ : (7 : ℤ) ∤ (2 * a) + (a - b),
  { exact mt (dvd_add _ _ _) h₄' },
  have h₆ : (7 : ℤ) ∤ (a - b),
  { exact mt (dvd_sub _ _ _) h₅ },
  have h₇ : (
end
