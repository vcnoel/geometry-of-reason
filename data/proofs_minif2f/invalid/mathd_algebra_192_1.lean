import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_192
  (q e d : ℂ)
  (h₀ : q = 11 - (5 * complex.I))
  (h₁ : e = 11 + (5 * complex.I))
  (h₂ : d = 2 * complex.I) :
  q * e * d = 292 * complex.I :=
begin

  -- We have that q = 11 - 5 * complex.I
  have q_eq_1 : q = 11 - (5 * complex.I),
  from h₀,

  -- We have that e = 11 + 5 * complex.I
  have e_eq_2 : e = 11 + (5 * complex.I),
  from h₁,

  -- We have that d = 2 * complex.I
  have d_eq_3 : d = 2 * complex.I,
  from h₂,

  -- We can now compute q * e * d
  have q_e_d_eq_1 :
    q * e * d =
    ((11 - (5 * complex.I)) * (11 + (5 * complex.I)) * (2 * complex.I)),
  from (q * e * d).calc,
  -- We can now expand this expression
  have q_e_d_eq_2 :
    q * e * d =
    ((11 - (5 * complex.I)) * (11 + (5 * complex.I)) * (2 * complex.I)) =
    (121 - 25 * complex.I^2 * 2 * complex.I),
  from q_e_d_eq_1
end
