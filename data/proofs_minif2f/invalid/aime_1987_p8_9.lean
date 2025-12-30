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

  -- We can write the condition on k as two inequalities.
  let k₀ : ℝ := (8 / 15 : ℝ) * n,
  let k₁ : ℝ := (7 / 13 : ℝ) * n,

  -- The first inequality says that k must be greater than k₀.
  let k₂ : ℝ := (n : ℝ) / (1 + n / k₀),
  have k₂_gt_k₀ : k₂ > k₀,
  calc
    k₂ > (n : ℝ) / (1 + n / (8 / 15 * n))
      : by { simp [k₂] }
   ... = (n : ℝ) / ((15 / 8) + 1)
      : by { simp [k₀] }
   ... = (n : ℝ) / ((23 / 8) : ℝ)
      : by { ring }
   ... > 0
      : by { simp [h₀] }

  -- The second inequality says that k must be less than k₁.
  let k₃ : ℝ := (n : ℝ) / (1 + n / k₁),
  have k₃_lt_k₁ : k₃ < k₁,
  calc
end
