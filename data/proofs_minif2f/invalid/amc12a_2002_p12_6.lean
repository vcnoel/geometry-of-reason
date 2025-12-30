import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2002_p12
  (f : ℝ → ℝ)
  (k : ℝ)
  (h₀ : ∀ x, f x = x^2 - 63 * x + k)
  (h₁ : set.subset (f ⁻¹' {0}) {x : ℝ | ∃ n : ℕ, ↑n = x ∧ nat.prime n}) :
  k = 122 :=
begin

  by_contra,
  have h₂ : ∀ x, f x ≠ 0,
  {
    intro x,
    by_contra,
    have h₃ : f x = 0,
    from h₀ x,
    have h₄ : ∃ n : ℕ, ↑n = x ∧ nat.prime n,
    from h₁ x,
    have h₅ : x ≠ 0,
    from h₄,
    contradiction,
  },
  have h₆ : ∀ x, f x ≠ 0,
  {
    intro x,
    have h₇ : f x ≠ 0,
    from h₂ x,
    have h₈ : f x = x^2 - 63 * x + k,
    from h₀ x,
    have h₉ : (x - 63)^2 - k ≠ 0,
    from h₇,
    have h₁₀ : (x - 63)^2 ≠ k,
    from h₉,
    have h₁₁ : x ≠ 63,
    from h₁₀,
    have h₁₂ : x ≠ 0,
    from h₁₁,
    have h₁₃ : f x ≠ 0,
   
end
