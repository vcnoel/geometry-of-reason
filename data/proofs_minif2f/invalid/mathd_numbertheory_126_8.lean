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

  cases h₀ with h₀₀ h₀₁,
  cases h₀₀ with h₀₀₀ h₀₀₁,
  cases h₀₁ with h₀₁₀ h₀₁₁,
  cases h₀₁₀ with h₀₁₀₀ h₀₁₀₁,
  cases h₀₁₁ with h₀₁₁₀ h₀₁₁₁,
  cases h₁ with h₁₀ h₁₁,
  cases h₂ with h₂₀ h₂₁,
  cases h₃ with h₃₀ h₃₁,
  cases h₃₀ with h₃₀₀ h₃₀₁,
  cases h₃₁ with h₃₁₀ h₃₁₁,
  cases h₃₁₁ with h₃₁₁₀ h₃₁₁₁,
  cases h₃₁₁₁ with h₃₁₁₁₀ h₃₁₁₁₁,
  cases h₂₁ with h₂₁₀ h₂₁₁,
  cases h₂₁₁ with h₂₁₁₀ h₂₁₁₁,
  cases h₁₁ with h₁₁₀ h₁₁₁,
  cases h₁₁₁ with h₁₁₁₀ h₁₁₁₁,
  cases h₀₁₁₁
end
