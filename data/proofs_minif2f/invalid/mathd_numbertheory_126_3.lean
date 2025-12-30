import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_126
  (x a : ℕ)
  (h₀ : 0 < x ∧ 0 < a)
  (h₁ : nat.gcd a 40 = x + 3)
  (h₂ : nat.lcm a 40 = x * (x + 3))
  (h₃ : ∀ b : ℕ, 0 < b → nat.gcd b 40 = x + 3 ∧ nat.lcm b 40 = x * (x + 3) → a ≤ b) :
  a = 8 :=
begin

  apply nat.gcd_eq_one_of_lcm_eq_one,
  { have h₄ := h₂,
    have h₅ := nat.lcm_eq_one_iff_gcd_eq_one.mpr h₄,
    have h₆ := nat.gcd_eq_one_iff_lcm_eq_one.mpr h₅,
    have h₇ := h₁,
    have h₈ := nat.gcd_eq_one_iff_lcm_eq_one.mpr h₇,
    have h₉ := h₆,
    have h₁₀ := h₈,
    have h₁₁ := h₉,
    have h₁₂ := h₁₀,
    have h₁₃ := h₁₁,
    have h₁₄ := h₁₂,
    have h₁₅ := h₁₃,
    have h₁₆ := h₁₄,
    have h₁₇ := h₁₅,
    have h₁₈ := h₁₆,
    have h₁₉ := h₁₇,
    have h₂₀ := h₁₈,
    have h₂₁ := h₁₉,
    have h₂₂ := h₂₀,
    have h₂₃ :=
end
