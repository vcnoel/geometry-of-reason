import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_303
  (S : finset ℕ)
  (h₀ : ∀ (n : ℕ), n ∈ S ↔ 2 ≤ n ∧ 171 ≡ 80 [MOD n] ∧ 468 ≡ 13 [MOD n]) :
  ∑ k in S, k = 111 :=
begin

  apply finset.sum_congr rfl,
  intro k,
  have h₁ := h₀ k,
  cases h₁ with h₁₁ h₁₂,
  cases h₁₂ with h₁₂₁ h₁₂₂,
  cases h₁₂₂ with h₁₂₂₁ h₁₂₂₂,
  cases h₁₂₂₁ with h₁₂₂₁₁ h₁₂₂₁₂,
  cases h₁₂₂₁₂ with h₁₂₂₁₂₁ h₁₂₂₁₂₂,
  cases h₁₂₂₂ with h₁₂₂₂₁ h₁₂₂₂₂,
  cases h₁₂₂₂₁ with h₁₂₂₂₁₁ h₁₂₂₂₁₂,
  cases h₁₂₂₂₂ with h₁₂₂₂₂₁ h₁₂₂₂₂₂,
  cases h₁₂₂₂₂₁ with h₁₂₂₂₂₁₁ h₁₂₂₂₂₁₂,
  cases h₁₂₂₂₂₂ with h₁₂₂₂₂₂₁ h₁₂₂₂₂₂₂,
  cases h₁₂₂₂₂₂₁ with h₁₂₂₂₂₂₁₁ h
end
