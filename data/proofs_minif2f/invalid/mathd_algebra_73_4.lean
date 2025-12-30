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

  have h₂ : x ≠ p,
  { intro h,
    have h₃ : x = p,
    { rw [h, h₀, real.norm_eq_abs, real.norm_eq_abs],
      simp [h₁] },
    exact h₃ },
  have h₄ : x ≠ q,
  { intro h,
    have h₃ : x = q,
    { rw [h, h₀, real.norm_eq_abs, real.norm_eq_abs],
      simp [h₁] },
    exact h₃ },
  have h₅ : x ≠ p + q - r,
  { intro h,
    have h₃ : x = p + q - r,
    { rw [h, h₀, real.norm_eq_abs, real.norm_eq_abs],
      simp [h₁] },
    exact h₃ },
  have h₆ : p ≠ q,
  { intro h,
    have h₃ : p = q,
    { rw [h, h₀, real.norm_eq_abs, real.norm_eq_abs],
      simp [h₁] },
    exact h₃ },
  have h₇ : x ≠ p + q,
  { intro h,
    have h₃ : x = p + q,
   
end
