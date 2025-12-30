import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12_2001_p9
  (f : ℝ → ℝ)
  (h₀ : ∀ x > 0, ∀ y > 0, f (x * y) = f x / y)
  (h₁ : f 500 = 3) : f 600 = 5 / 2 :=
begin

  have h₂ : f 300 = 3 / 2 := by
    apply h₀ (300 : ℝ) (2 : ℝ),
    exact (0 < 300) ∧ (0 < 2),
  have h₃ : f 300 = f (500 - 200) := by
    refl,
  have h₄ : f 300 = (f 500) / (2 : ℝ) := by
    apply h₀ (500 : ℝ) (2 : ℝ),
    exact (0 < 500) ∧ (0 < 2),
  have h₅ : (f 300) * (2 : ℝ) = (f 500) := by
    apply eq_mul_inv,
    exact h₄,
  have h₆ : f 300 = 3 / 2 := by
    exact h₂,
  have h₇ : (f 300) * (2 : ℝ) = (3 / 2) * (2 : ℝ) := by
    exact eq_mul_eq_mul,
    exact h₆,
  have h₈ : (f 300) * (2 : ℝ) = 3 := by
    exact eq_mul_eq
end
