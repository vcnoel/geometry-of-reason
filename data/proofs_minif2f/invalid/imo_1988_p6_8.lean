import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1988_p6
  (a b : ℕ)
  (h₀ : 0 < a ∧ 0 < b)
  (h₁ : (a * b + 1) ∣ (a^2 + b^2)) :
  ∃ x : ℕ, (x^2 : ℝ) = (a^2 + b^2) / (a * b + 1) :=
begin

  have h₂ : (a * b + 1) ∣ (a^2 * b + a * b^2),
  from (nat.dvd_mul _ _).mpr (dvd_mul (dvd_refl _) (dvd_refl _)),
  have h₃ : (a * b + 1) ∣ (a^2 * b + a * b^2 + b^2),
  from (dvd_add (dvd_refl _) (h₂)),
  have h₄ : (a * b + 1) ∣ (a^2 * b + a * b^2 + b^2),
  from (dvd_trans h₃ (h₁)),
  have h₅ : (a * b + 1) ∣ (a^2 + b^2),
  from (dvd_sub (h₄) (dvd_mul (dvd_refl _) (dvd_refl _))),
  have h₆ : (a * b + 1) ∣ (a^2 + b^2 + 1),
  from (dvd_add (dvd_refl _) (h₅)),
  have h₇ : (a * b + 1) �
end
