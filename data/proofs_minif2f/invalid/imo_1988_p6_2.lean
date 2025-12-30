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

  have h₂ : (a^2 + b^2) % (a * b + 1) = 0,
  { rw [mod_eq_sub_of_dvd h₁],
    refl, },
  have h₃ : (a * b + 1) % 4 = 1,
  { by_cases h₄ : (a * b + 1) % 2 = 0,
    { have h₅ : (a * b + 1) % 4 = 0,
      { rw [mod_eq_sub_of_dvd h₄],
        refl, },
      exact absurd h₅ h₃, },
    have h₆ : (a * b + 1) % 4 = 3,
    { have h₇ : (a * b + 1) % 2 = 1,
      { have h₈ : a % 2 = 1 ∨ a % 2 = 0,
        { exact dec_trivial, },
      cases h₈,
      { have h₉ : b % 2 = 1 ∨ b % 2 = 0,
        { exact dec_trivial, },
      cases h₉,
      {
end
