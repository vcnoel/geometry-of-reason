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

  have h₃ : ∀ x ∈ (f⁻¹' {10}), x ≥ -5,
  { intro x,
    have hx : x = 10, by simp [h₂, fintype.card_pos, fintype.card_eq_zero],
    have h₂x : x ≥ -5, by simp [hx, h₁],
    assumption },
  have h₄ : ∀ x ∈ (f⁻¹' {10}), f x = 3 * x - 8,
  { intro x,
    have hx : x ≥ -5, by assumption,
    have h₂x : x ∈ (f⁻¹' {10}), by assumption,
    have h₃x : f x = 3 * x - 8, by simp [hx, h₂x, h₁],
    assumption },
  have h₅ : ∀ x ∈ (f⁻¹' {10}), 3 * x - 8 = 10,
  { intro x,
    have hx : f x = 10, by assumption,
    have h₂x : x ∈ (f⁻¹' {10}), by assumption,
    have h₃x : 3 * x - 8 = 10
end
