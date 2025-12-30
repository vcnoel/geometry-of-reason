import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_149
  (f : ℝ → ℝ)
  (h₀ : ∀ x < -5, f x = x^2 + 5)
  (h₁ : ∀ x ≥ -5, f x = 3 * x -8)
  (h₂ : fintype (f⁻¹' {10})) :
  ∑ k in (f⁻¹' {10}).to_finset, k = 6 :=
begin

  have h₃ : ∀ x ∈ f⁻¹' {10}, x ≥ -5, from
  λ x hx,
  let f_inv_10 : set ℝ := f⁻¹' {10} in
  let h₄ := h₁ x in
  show x ≥ -5,
  from
  show f x ≥ 2,
  from
  show f x ≥ 2 * x - 14,
  from
  h₄,
  show 2 * x - 14 ≥ -10,
  from
  mul_nonpos_nonpos (ge_of_eq (sub_nonpos_of_nonneg (pow_nonneg x zero_le_two) (pow_nonneg x (neg_nonneg_of_le (-5 * 2) 0))))
  (ge_of_eq (sub_nonpos_of_nonneg (pow_nonpos x (neg_nonneg_of_le 0 (-5 * 2))) (pow_nonneg x (neg_nonneg_of_le (-5 * 2) 0)))),
  show 2 * x - 14 ≥ -10,
  from
  add_le_add
  (sub_le_sub_right (-10) 14)
  (sub_le_sub_right (-10
end
