import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_amgm_sumasqdivbsqgeqsumbdiva
  (a b c : ℝ)
  (h₀ : 0 < a ∧ 0 < b ∧ 0 < c) :
  a^2 / b^2 + b^2 / c^2 + c^2 / a^2 ≥ b / a + c / b + a / c :=
begin

  have h₁ : a^2 / b^2 + b^2 / c^2 + c^2 / a^2 ≥ a / b + c / a + b / c,
  by { apply algebra_amgm, apply h₀, },
  have h₂ : a / b + c / a + b / c ≥ b / a + c / b + a / c,
  by { apply algebra_amgm, apply h₀, },
  exact h₁.trans h₂,

end
