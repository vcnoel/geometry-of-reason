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

  have h₃ : ∀ x ∈ (f⁻¹' {10}), f x = 10,
  { rintros x hx,
    exact hx },
  have h₄ : ∀ x ∈ (f⁻¹' {10}), x ≥ -5,
  { rintros x hx,
    exact h₁ hx },
  have h₅ : ∀ x ∈ (f⁻¹' {10}), x^2 + 5 = 10,
  { rintros x hx,
    have h₆ : f x = 10,
    { exact h₃ hx },
    have h₇ : x^2 + 5 = 10,
    { rw h₆ at h₀,
      exact h₀ hx },
    exact h₇ },
  have h₈ : ∀ x ∈ (f⁻¹' {10}), x^2 = 5,
  { rintros x hx,
    exact (h₇ hx).symm },
  have h₉ : ∀ x ∈ (f⁻¹' {10}), x = ±√5,
  { rintros x hx,
    exact (eq_of_eq_abs (h₈ hx)) },
  have h₁₀ :
end
