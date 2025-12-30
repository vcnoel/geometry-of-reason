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

  by_contradiction h,
  have h₂ : ∀ x, f x ≠ 0,
  { intros x h,
    apply h₁,
    use x,
    exact h },
  have h₃ : f (-63) ≠ 0,
  { apply h₂,
    simp [h₀, -63] },
  have h₄ : f (63) ≠ 0,
  { apply h₂,
    simp [h₀, 63] },
  have h₅ : f (63 - 63) ≠ 0,
  { apply h₂,
    simp [h₀, 63 - 63] },
  have h₆ : f (63 + 63) ≠ 0,
  { apply h₂,
    simp [h₀, 63 + 63] },
  have h₇ : f (63 - 63 + 1) ≠ 0,
  { apply h₂,
    simp [h₀, 63 - 63 + 1] },
  have h₈ : f (63 - 63 - 1) ≠ 0,
  { apply h₂,
    simp [h₀, 63 - 63 - 1] },
 
end
