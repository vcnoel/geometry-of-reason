import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_510
  (x y : ℝ)
  (h₀ : x + y = 13)
  (h₁ : x * y = 24) :
  real.sqrt (x^2 + y^2) = 11 :=
begin

  have h₂ : (x^2 + y^2) = (x + y)^2 - 2 * x * y,
  by {
    ring,
  },
  have h₃ : (x + y)^2 - 2 * x * y = 13^2 - 2 * 24,
  by {
    rw h₀,
    rw h₁,
  },
  have h₄ : (x + y)^2 - 2 * x * y = 169 - 48,
  by {
    ring,
  },
  have h₅ : (x + y)^2 - 2 * x * y = 121,
  by {
    ring,
  },
  have h₆ : real.sqrt (x^2 + y^2) = real.sqrt 121,
  by {
    rw h₂,
    rw h₃,
    rw h₅,
  },
  have h₇ : real.sqrt 121 = 11,
  by {
    exact real.sqrt 121,
  },
  have h₈ : real.sqrt (x^2 + y^2) = 11,
  by {
    rw h₆,
    rw h₇,
  },
 
end
