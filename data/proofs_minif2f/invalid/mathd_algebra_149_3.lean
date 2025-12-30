import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_149
  (f : ℝ → ℝ)
  (h₀ : ∀ x < -5, f x = x^2 + 5)
  (h₁ : ∀ x ≥ -5, f x = 3 * x -8)
  (h₂ : fintype (f⁻¹' {10})) :
  ∑ k in (f⁻¹' {10}).to_finset, k = 6 :=
begin

  have h₃ : ∀ k ∈ (f⁻¹' {10}), f k = 10,
  { intros k hk,
    exact h₁ k hk },
  have h₄ : ∀ k ∈ (f⁻¹' {10}), k ≥ -5,
  { intros k hk,
    exact h₁ k hk },
  have h₅ : (f⁻¹' {10}) ⊆ { k | k ≥ -5 },
  { intros k hk,
    exact h₄ k hk },
  have h₆ : (f⁻¹' {10}) ⊆ { k | k < -5 }ᶜ,
  { intros k hk,
    exact h₄ k hk },
  have h₇ : fintype (f⁻¹' {10}),
  { exact h₂ },
  have h₈ : fintype ({ k | k ≥ -5 }),
  { have h₉ : fintype ({ k | k ≥ -5 } ∩ (f⁻¹' {10})),
    { exact h₇ },
    exact fintype.of_injective (λ k hk, k) h₉ },
  have h₉ : fintype ({
end
