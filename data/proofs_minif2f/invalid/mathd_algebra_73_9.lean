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
    { intro h₃,
      have h₄ : x = r, from h₃,
      exact h₁ h₄ },
  have h₃ : (x - q) ≠ 0 := by
    { intro h₄,
      have h₅ : x = r, from h₄,
      exact h₁ h₅ },
  have h₄ : (x - p) * (x - q) = (r - p) * (x - q) := by
    { have h₅ : (x - q) ≠ (r - q), from ne_of_ne (h₃.ne h₄),
      have h₆ : (r - p) ≠ (x - p), from ne_of_ne (h₂.ne h₅),
      have h₇ : (x - p) * (r - p) = (r - p) * (x - p), from eq_of_sub_eq h₆ rfl,
      rw h₇ at h₀,
      exact h₀ },
  have h₅ : (r - q) ≠ 0 := by
    { intro h�
end
