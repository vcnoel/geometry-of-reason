import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem aime_1987_p8
  (n : ℕ)
  (h₀ : 0 < n)
  (h₁ : ∃! k, (8 : ℝ) / 15 < n / (n + k) ∧ (n : ℝ) / (n + k) < 7 / 13) :
  n ≤ 112 :=
begin

  cases h₁ with k hk,
  refine le_trans (le_of_lt (lt_of_le_of_lt (le_div_of_div_le _ _) (lt_div_of_lt _ _))) (le_of_lt (lt_of_le_of_lt (le_div_of_div_le _ _) (lt_div_of_lt _ _))),
  { exact (div_le_div_right _ _).mpr (mul_le_mul_of_nonneg_of_nonneg (le_of_lt (lt_div_of_lt h₀ h₀)) (le_of_lt (lt_div_of_lt h₀ h₀))), },
  { exact (div_lt_div_right _ _).mpr (mul_lt_mul_of_pos_of_pos (lt_of_le_of_lt (le_div_of_div_le _ _) (lt_div_of_lt h₀ h₀)) (lt_of_le_of_lt (le_div_of_div_le _ _) (lt_div_of_lt h₀ h₀))), },
  { exact (div_le_div_right _ _).mpr (mul_le_mul_of_nonneg_of_nonneg (le_of_lt (lt_div_of_lt h₀ h₀)) (le_of_lt (lt_div_of_lt h₀ h₀))), },
  { exact (div_lt_div_right _ _).mpr (mul_lt_mul_of_pos_of_pos (
end
