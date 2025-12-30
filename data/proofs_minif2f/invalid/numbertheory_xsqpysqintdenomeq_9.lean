import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem numbertheory_xsqpysqintdenomeq
  (x y : ℚ)
  (h₀ : (x^2 + y^2).denom = 1) :
  x.denom = y.denom :=
begin

  have h₁ : (x^2 + y^2).numerator = x^2 + y^2,
  by simp [h₀],

  have h₂ : x.denom * y.denom * (x^2 + y^2) = x^2 * x.denom + y^2 * y.denom,
  by simp [h₁],

  have h₃ : x.denom * y.denom * (x^2 + y^2) = x^2 * x.denom + y^2 * y.denom,
  by { rw [h₂], refl },

  have h₄ : (x^2 + y^2) * x.denom * y.denom = (x^2 * x.denom + y^2 * y.denom),
  by { rw [h₃], refl },

  have h₅ : x.denom * y.denom = x^2 * x.denom / (x^2 + y^2) + y^2 * y.denom / (x^2 + y^2),
  by { rw [h₄], refl },

  have h₆ : x.denom * y.denom = (x^2
end
