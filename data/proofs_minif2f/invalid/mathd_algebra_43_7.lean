import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_43
  (a b : ℝ)
  (f : ℝ → ℝ)
  (h₀ : ∀ x, f x = a * x + b)
  (h₁ : f 7 = 4)
  (h₂ : f 6 = 3) :
  f 3 = 0 :=
begin

  let g : ℝ → ℝ := λ x, f x - 3;
  let h : ℝ → ℝ := λ x, f x - 4;
  let i : ℝ → ℝ := λ x, f x - 5;
  show
  g 3 = 0
  ∧ h 3 = 0
  ∧ i 3 = 0
  ∧ h₀ (3 * 7) = 0
  ∧ h₁ (3 * 6) = 0
  ∧ h₂ (3 * 7) = 0
  ∧ i 3 = 0
  ∧ h₀ (3 * 7) = 0
  ∧ h₁ (3 * 6) = 0
  ∧ h₂ (3 * 7) = 0
  ∧ i 3 = 0
  ∧ h₀ (3 * 7) = 0
  ∧ h₁ (3 * 6) = 0
  ∧ h₂ (3 * 7) = 0

end
