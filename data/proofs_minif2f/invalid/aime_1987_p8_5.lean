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
  have h₂ := hk.1,
  have h₃ := hk.2,
  have h₄ := (div_pos (real_pos_of_nat n) h₀).ne,
  have h₅ := (div_pos (real_pos_of_nat (n + k)) (real_pos_of_nat n)).ne,
  have h₆ := (div_pos (real_pos_of_nat n) (real_pos_of_nat (n + k))).ne,
  have h₇ := (div_pos (real_pos_of_nat (n + k)) (real_pos_of_nat (n + k))).ne,
  have h₈ := (lt_add_one (n : ℝ)).ne,
  have h₉ := (lt_add_one (n + k : ℝ)).ne,
  have h₁₀ := (real.lt_asymmetry.1 h₃).symm,
  have h₁₁ := (real.lt_asymmetry.1 h₂).symm,
  have h₁₂ := (real.lt_asymmetry.1 h₁₀).symm,
  have h₁₃ := (real.lt_asymmetry.1 h₁₁).symm,
  have h₁
end
