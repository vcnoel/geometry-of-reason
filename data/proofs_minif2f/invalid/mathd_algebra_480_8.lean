import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_480
  (f : ℝ → ℝ)
  (h₀ : ∀ x < 0, f x = -(x^2) - 1)
  (h₁ : ∀ x, 0 ≤ x ∧ x < 4 → f x = 2)
  (h₂ : ∀ x ≥ 4, f x = real.sqrt x) :
  f π = 2 :=
begin

  by_contradiction h,
  have h₃ : f π < 2,
  from lt_of_le_not_le (h₁ (real.pi)) h,
  have h₄ : π < 0,
  by linarith,
  have h₅ : f π = -(π^2) - 1,
  from h₀ h₄,
  have h₆ : -(π^2) - 1 < 2,
  from lt_sub_of_le_sub h₃ h₅,
  have h₇ : π^2 > 3,
  from lt_of_le_of_lt (le_of_lt h₆) (sub_lt_self _ 1),
  have h₈ : π^2 ≥ 16,
  from le_of_lt_of_eq h₇ (pow_ge_four h₇),
  have h₉ : π ≥ 4,
  from sqrt_ge_four h₈,
  have h₁₀ : f π = real.sqrt π,
  from h₂ h₉,
  have h₁₁ : 2 ≤ f π,
  from le_of_eq_of_le h₁ (real.pi),
  have h₁₂ : 2 < f π,
  from lt_of
end
