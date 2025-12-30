import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2016_p3
  (f : ℝ → ℝ → ℝ)
  (h₀ : ∀ x, ∀ y ≠ 0, f x y = x - y * int.floor (x / y)) :
  f (3 / 8) (-(2 / 5)) = -(1 / 40) :=
begin

  rw [h₀ 3 / 8, h₀ (-(2 / 5)), int.floor_neg, int.floor_div_neg_neg, int.floor_neg, int.floor_div_pos_neg, int.floor_pos, int.floor_neg, neg_sub, neg_mul, sub_neg, neg_mul, sub_neg, neg_mul, sub_neg, neg_mul],
  simp [int.floor_div_neg_pos],
  ring_nf,
  ring,

end
