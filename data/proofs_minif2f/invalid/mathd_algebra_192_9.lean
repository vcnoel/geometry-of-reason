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

  have h₃ : q * e = (11 - (5 * complex.I)) * (11 + (5 * complex.I)),
  by {simp [h₀, h₁]},
  have h₄ : (11 - (5 * complex.I)) * (11 + (5 * complex.I)) = 11^2 - (5 * complex.I)^2,
  by {simp [h₃]},
  have h₅ : 11^2 - (5 * complex.I)^2 = 121 + 25,
  by {simp [h₄]},
  have h₆ : 121 + 25 = 146,
  by {simp [h₅]},
  have h₇ : q * e = 146,
  by {simp [h₆]},
  have h₈ : q * e * d = 146 * 2 * complex.I,
  by {simp [h₇, h₂]},
  have h₉ : 146 * 2 * complex.I = 292 * complex.I,
  by {simp [h₈]},
  have h₁₀ : q * e * d = 292 * complex.I,
  by {simp [h₉]},

end
