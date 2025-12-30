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

  have h₁ := algebra.amgm a^2 b^2 c^2,
  have h₂ := algebra.amgm (1 / a^2) (1 / b^2) (1 / c^2),
  have h₃ := algebra.amgm a b c,
  have h₄ := algebra.amgm (b/a) (c/b) (a/c),
  rw h₁ at h₄,
  rw h₂ at h₄,
  rw h₃ at h₄,
  linarith,

end
