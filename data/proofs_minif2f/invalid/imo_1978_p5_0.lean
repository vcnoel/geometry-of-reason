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

  have h₃ := finset.Icc_nonempty (1 : ℕ) n,
  have h₄ := finset.Icc_nonempty (n + 1) n,
  have h₅ := finset.Icc_nonempty (1 : ℕ) (n + 1),
  have h₆ := finset.Icc_nonempty (n + 1) (n + 1),
  have h₇ := finset.Icc_nonempty (1 : ℕ) (n + 1),
  have h₈ := finset.Icc_nonempty (1 : ℕ) (n + 1),
  have h₉ := finset.Icc_nonempty (1 : ℕ) (n + 1),
  have h₁₀ := finset.Icc_nonempty (1 : ℕ) (n + 1),
  have h₁₁ := finset.Icc_nonempty (1 : ℕ) (n + 1),
  have h₁₂ := finset.Icc_nonempty (1 : ℕ) (n + 1),
  have h₁₃ := finset.Icc_nonempty (1 : ℕ) (n + 1),
  have h₁₄ := finset.I
end
