import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_amgm_faxinrrp2msqrt2geq2mxm1div2x :
  ∀ x > 0, 2 - real.sqrt 2 ≥ 2 - x - 1 / (2 * x) :=
begin

  intro x,
  have h1 : x > 0, from assumption,
  have h2 : 1 / (2 * x) < 1 / 2, by { linarith, },
  have h3 : 2 - real.sqrt 2 > 0, by { linarith, },
  have h4 : 2 - real.sqrt 2 ≥ 2 - x - 1 / (2 * x), by {
    linarith,
    },
  exact h4,

end
