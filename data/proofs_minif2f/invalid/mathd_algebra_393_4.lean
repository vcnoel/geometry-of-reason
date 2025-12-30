import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_393
  (σ : equiv ℝ ℝ)
  (h₀ : ∀ x, σ.1 x = 4 * x^3 + 1) :
  σ.2 33 = 2 :=
begin

  simp only [σ.2, h₀],
  simp only [pow_three, mul_one, add_one, mul_two],
  norm_num,
  simp only [add_zero, eq_self_iff_true, and_true, true_and],
  exact true

end
