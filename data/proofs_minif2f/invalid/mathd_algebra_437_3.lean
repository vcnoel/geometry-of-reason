import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_437
  (x y : ℝ)
  (n : ℤ)
  (h₀ : x^3 = -45)
  (h₁ : y^3 = -101)
  (h₂ : x < n)
  (h₃ : ↑n < y) :
  n = -4 :=
begin

  have h₄ : x = -3, from le_antisymm (pow_three_pos_neg_iff.mp h₀) (by norm_num),
  have h₅ : y = -1, from le_antisymm (pow_three_pos_neg_iff.mp h₁) (by norm_num),
  have h₆ : -3 < n, from h₂,
  have h₇ : n < -1, from h₃,
  have h₈ : -3 < -1, from dec_trivial,
  have h₉ : -3 < n ∧ n < -1, from and.intro h₆ h₇,
  have h₁₀ : -3 < n ∧ n < -1 → n = -4, from
    
end
