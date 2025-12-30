import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_73
  (p q r x : ℂ)
  (h₀ : (x - p) * (x - q) = (r - p) * (r - q))
  (h₁ : x ≠ r) :
  x = p + q - r :=
begin

  have h₂ : (x - p) ≠ 0 := by
    intro h,
    have h₃ : (x - p) * (x - q) = 0 := by rw [h],
    have h₄ : (x - p) = 0 ∨ (x - q) = 0 := by
      exact or_of_mul_eq_zero h₃,
    have h₅ : (x = p ∨ x = q) := by
      rintros (h₆ | h₇) ; exact h₆ ▸ h₇,
    have h₆ : x ≠ p ∨ x ≠ q := by
      intro h,
      have h₇ : x = p ∧ x = q := by
        exact and_of_or h₅,
      have h₈ : p = q := by
        exact eq_of_eq_and_eq h₇.left h₇.right,
      have h₉ : (x - p) * (x - q) = (p - p) * (p - q) := by
        rw [h₈, eq_self_sub_self p],
      have h₁₀ : (x - p) * (x - q
end
