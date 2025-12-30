import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2017_p2
  (x y : ℝ)
  (h₀ : x ≠ 0)
  (h₁ : y ≠ 0)
  (h₂ : x + y = 4 * (x * y)) :
  1 / x + 1 / y = 4 :=
begin

  have h₃ : x * y ≠ 0,
  { contrapose! h₂,
    simp only [not_mul_eq_zero],
    exact or.inr (or.inr (or.inr h₀)) },

  have h₄ : 1 / x + 1 / y = (x + y) / (x * y),
  { field_simp,
    exact h₂ },

  have h₅ : (x + y) / (x * y) = 4,
  { rw h₄,
    rw h₂,
    exact (div_eq_iff h₃).2 rfl },

  exact (h₅ ▸ h₄)

end
