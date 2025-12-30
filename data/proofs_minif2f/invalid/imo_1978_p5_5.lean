import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1978_p5
  (n : ℕ)
  (a : ℕ → ℕ)
  (h₀ : ∀ (m : ℕ), 0 < a m)
  (h₁ : ∀ (p q : ℕ), p ≠ q → a p ≠ a q)
  (h₂ : 0 < n) :
  (∑ k in finset.Icc 1 n, (1 : ℝ)/k) ≤ ∑ k in finset.Icc 1 n, (a k)/k^2 :=
begin

  have h₃ : ∀ (k : ℕ), 1 ≤ k ∧ k ≤ n → (1 : ℝ)/k ≤ (a k)/k^2,
  { intros k hk,
    have hk₁ : 1 < k := lt_of_le_and_lt hk.1 hk.2,
    have hk₂ : 0 < a k := h₀ _,
    have hk₃ : k^2 ≠ 1 := mt (λ h, hk₁ h) rfl,
    have hk₄ : a k ≠ 1 := h₁ _ _ hk₃,
    have hk₅ : (1 : ℝ) < a k := lt_of_lt_of_le (lt_one k) hk₂,
    have hk₆ : (1 : ℝ) < (a k)/k^2 := div_lt_of_lt_mul hk₅ (lt_one k),
    show (1 : ℝ)/k ≤ (a k)/k^2,
    exact le_of_lt hk₆, },
  calc
  ∑ k in finset.Icc 1 n, (1 : ℝ)/k
      = ∑ k in finset.Icc 1 n, ((a k)/k^2 + (1 -
end
