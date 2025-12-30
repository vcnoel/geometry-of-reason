import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2020_p22
  (S : finset ℕ)
  (h₀ : ∀ (n : ℕ), n ∈ S ↔ 5 ∣ n ∧ nat.lcm 5! n = 5 * nat.gcd 10! n) :
  S.card = 1 :=
begin

  have h₁ := h₀ 0,
  have h₂ := h₀ 5,
  have h₃ := h₀ 10,
  have h₄ := h₀ 15,
  have h₅ := h₀ 20,
  have h₆ := h₀ 25,
  have h₇ := h₀ 30,
  have h₈ := h₀ 35,
  have h₉ := h₀ 40,
  have h₁₀ := h₀ 45,
  have h₁₁ := h₀ 50,
  have h₁₂ := h₀ 55,
  have h₁₃ := h₀ 60,
  have h₁₄ := h₀ 65,
  have h₁₅ := h₀ 70,
  have h₁₆ := h₀ 75,
  have h₁₇ := h₀ 80,
  have h₁₈ := h₀ 85,
  have h₁₉ := h₀ 90,
  have h₂₀ := h₀ 95,
  have h₂₁ := h₀ 100,
  have h₂₂ := h₀ 105,
  have h₂₃ := h₀ 110,

end
