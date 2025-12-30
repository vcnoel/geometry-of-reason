import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_96
  (x y z a : ℝ)
  (h₀ : 0 < x ∧ 0 < y ∧ 0 < z)
  (h₁ : real.log x - real.log y = a)
  (h₂ : real.log y - real.log z = 15)
  (h₃ : real.log z - real.log x = -7) :
  a = -8 :=
begin

  let f : ℝ → ℝ := λ z : ℝ => real.log (x * z) - real.log (y * z);
  let g : ℝ → ℝ := λ z : ℝ => real.log (y * z) - real.log (z * x);
  let h : ℝ → ℝ := λ z : ℝ => real.log (z * x) - real.log (z * y);
  have (h₁ ∧ h₂) = 0,
  { assumption ; simplify ; exact h₁ ∧ h₂ },
  have (h₂ ∧ h₃) = 0,
  { assumption ; simplify ; exact h₂ ∧ h₃ },
  have (h₃ ∧ h₀) = 0,
  { assumption ; simplify ; exact h₃ ∧ h₀ },
  have f * g * h = 0,
  { induction on n; assume h₀ = 0; simplify ; exact h₁ ∧ h₂ ∧ h₃ },
  { induction on n; assume h₀ = 0; simplify ; exact h₁ ∧ h₂ ∧ h₃ },
  { induction on n; assume h₀ = 0; simplify ; exact h₁ ∧ h₂ ∧ h₃ },
  { induction on n; assume h
end
