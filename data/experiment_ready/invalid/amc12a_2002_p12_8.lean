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

  have h₂ : ∀ x, f x = x^2 - 63 * x + 122, from λ x, h₀ x,
  have h₃ : ∀ x, x ∈ f ⁻¹' {0} → x ∈ {x : ℝ | ∃ n : ℕ, ↑n = x ∧ nat.prime n}, from λ x hx, h₁ hx,
  have h₄ : ∀ x, x ∈ {x : ℝ | ∃ n : ℕ, ↑n = x ∧ nat.prime n} → x ∈ f ⁻¹' {0}, from λ x hx, h₃ hx,
  have h₅ : set.equiv {x : ℝ | ∃ n : ℕ, ↑n = x ∧ nat.prime n} (f ⁻¹' {0}), from set.equiv_of_subset_of_subset h₄ h₃,
  have h₆ : set.finite (f ⁻¹' {0}), from set.finite_of_finite_preimage (set.finite_univ),
  have h₇ : set.finite {x : ℝ | ∃ n : ℕ, ↑n = x ∧ nat.prime n}, from h₆ �
end
