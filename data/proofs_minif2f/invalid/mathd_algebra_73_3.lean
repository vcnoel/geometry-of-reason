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

  have h₂ := Complex.abs_eq_zero (x - p) (x - q) (h₀),
  have h₃ := Complex.abs_eq_zero (r - p) (r - q) (h₀),
  have h₄ := Complex.abs_eq_zero (r - p) (r - q) (h₃),
  have h₅ := Complex.abs_eq_zero (x - p) (x - q) (h₂),
  have h₆ := Complex.abs_eq_zero (r - p) (r - q) (h₄),
  have h₇ := Complex.abs_eq_zero (x - p) (x - q) (h₅),
  have h₈ := Complex.abs_eq_zero (r - p) (r - q) (h₆),
  have h₉ := Complex.abs_eq_zero (x - p) (x - q) (h₇),
  have h₁₀ := Complex.abs_eq_zero (r - p) (r - q) (h₈),
  have h₁₁ := Complex.abs_eq_zero (x - p) (x - q) (h₉),
  have h₁₂ := Complex.abs_eq_zero (r
end
