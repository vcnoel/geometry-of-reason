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

  let k := classical.some h₁,
  have hk₁ : (8 : ℝ) / 15 < n / (n + k),
  from classical.some_spec h₁.1,
  have hk₂ : (n : ℝ) / (n + k) < 7 / 13,
  from classical.some_spec h₁.2,
  have h₁₂ : 0 < n + k,
  from add_pos_of_pos_of_pos h₀ (pos_of_ne_of_lt k 0 (ne_of_gt hk₂)),
  have h₂₁ : 0 < n,
  from h₀,
  have h₂₂ : 0 < k,
  from pos_of_ne_of_lt k 0 (ne_of_gt hk₁),
  have h₃₁ : 0 < n / (n + k),
  from div_pos_of_pos_of_pos h₂₁ h₁₂,
  have h₃₂ : 0 < (8 : ℝ) / 15,
  from div_pos_of_pos_of_pos (8 : ℝ) 0 (ne_of_gt hk₁),
  have h₃₃ : 0 < 7 / 13,
  from div_pos_of_pos_of_pos (7 : ℝ) 
end
