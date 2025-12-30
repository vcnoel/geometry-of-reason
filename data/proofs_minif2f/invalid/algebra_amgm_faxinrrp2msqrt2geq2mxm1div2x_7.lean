import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_amgm_faxinrrp2msqrt2geq2mxm1div2x :
  ∀ x > 0, 2 - real.sqrt 2 ≥ 2 - x - 1 / (2 * x) :=
begin

  intro x,
  have h1 : 0 < x, by assumption,
  have h2 : 0 < 1 / (2 * x), by { assume h3 : 0 ≤ 1 / (2 * x), have h4 : x ≤ 1 / 2, by { rwa h3, },
    contradiction },
  have h3 : 0 < 1 / x, by { assume h4 : 0 ≤ 1 / x, have h5 : x ≤ 1, by { rwa h4, },
    contradiction },
  have h4 : 0 < real.sqrt 2, by { assume h5 : real.sqrt 2 ≤ 0, have h6 : 2 ≤ 0, by { rwa h5, },
    contradiction },
  have h5 : 0 < 1 / (2 * real.sqrt 2), by { assume h6 : 0 ≤ 1 / (2 * real.sqrt 2), have h7 : real.sqrt 2 ≤ 1 / 2, by { rwa h6, },
    contradiction },
  have h6 : 0 < real.sqrt 2 - 1 / (2 * real.sqrt 2
end
