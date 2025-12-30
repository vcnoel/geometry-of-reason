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

  let s := f⁻¹' {10},
  have hs₁ : s ≠ ∅,
  { have h₁ : ∃ x ∈ s, x ≥ -5,
    { use -5,
      exact h₁ (-5) },
    have h₂ : ∃ x ∈ s, x < -5,
    { use -6,
      exact h₀ (-6) },
    exact ne_empty_of_mem_of_mem (h₁.symm) (h₂.symm) },
  have hs₂ : ∀ x ∈ s, x ≥ -5,
  { assume x hx,
    have h₁ : f x = 10,
    { exact mem_preimage _ hx },
    have h₂ : x ≥ -5,
    { have h₃ : x = 3 * x - 8,
      { rw h₁,
        exact h₁ },
      have h₄ : x ≥ -5,
      { have h₅ : x ≥ -10,
        { have h₆ : x^2 + 5 ≥ 5,
          { apply h₀ },
          have h₇ : x^2 ≥ 0,
          { apply pow_nonneg },
          have h₈ : x ≥
end
