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

  have h₂ := h₁,
  have h₃ : (a^2 + b^2) % (a * b + 1) = 0,
  { have h₄ : a * b + 1 ∣ a^2 + b^2,
    { exact h₂ },
    have h₅ : a * b + 1 ∣ (a^2 + b^2) % (a * b + 1),
    { have h₆ : (a^2 + b^2) % (a * b + 1) ≤ a^2 + b^2,
      { exact mod_le a^2 + b^2 (a * b + 1) },
      have h₇ : a * b + 1 > 0,
      { exact h₀.1 },
      have h₈ : (a * b + 1) % (a * b + 1) = 1,
      { exact mod_self (a * b + 1) },
      have h₉ : (a^2 + b^2) % (a * b + 1) = 0,
      { have h₁₀ : (a^2 +
end
