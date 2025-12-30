import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1966_p4
  (n : ℕ)
  (x : ℝ)
  (h₀ : ∀ k : ℕ, 0 < k → ∀ m : ℤ, x ≠ m * π / (2^k))
  (h₁ : 0 < n) :
  ∑ k in finset.Icc 1 n, (1 / real.sin ((2^k) * x)) = 1 / real.tan x - 1 / real.tan ((2^n) * x) :=
begin

  have h₂ : ∀ k : ℕ, 1 ≤ k → k ≤ n → (2^k) * x ≠ 0,
  from λ k hk₁ hk₂, (h₀ k hk₂).ne,

  have h₃ : ∀ k : ℕ, 1 ≤ k → k ≤ n → (2^k) * x ≠ (2^k) * π / 2,
  from λ k hk₁ hk₂, (h₀ k hk₂).ne,

  have h₄ : ∀ k : ℕ, 1 ≤ k → k ≤ n → (2^k) * x ≠ (2^k) * (-π) / 2,
  from λ k hk₁ hk₂, (h₀ k hk₂).ne,

  have h₅ : ∀ k : ℕ, 1 ≤ k → k ≤ n → (2^k) * x ≠ (2^k) * (π / 2),
  from λ k hk₁ hk₂, (h₀ k hk₂).ne,

  have h₆ : ∀ k : ℕ, 1 ≤ k → k ≤ n → (2^k) * x ≠ (2^k) * (
end
