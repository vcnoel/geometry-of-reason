import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_510
  (x y : ℝ)
  (h₀ : x + y = 13)
  (h₁ : x * y = 24) :
  real.sqrt (x^2 + y^2) = 11 :=
begin

  -- 1/1
  rw real.sqrt_mul_sqrt at h₁,
  -- 1/2
  cases h₁ with h₁₁ h₁₂,
  -- 1/3
  cases h₁₁ with h₁₃ h₁₄,
  -- 1/4
  have h₂ : (x^2 + y^2) = 121,
  { rw h₁₂,
    rw h₁₃,
    rw h₀,
    rw h₁₄ },
  -- 1/5
  have h₃ : real.sqrt (x^2 + y^2) = 11,
  { rw real.sqrt_eq_iff_exists_sq,
    use 121,
    use h₂ },
  -- 1/6
  exact h₃,

end
