import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2008_p8
  (x y : ℝ)
  (h₀ : 0 < x ∧ 0 < y)
  (h₁ : y^3 = 1)
  (h₂ : 6 * x^2 = 2 * (6 * y^2)) :
  x^3 = 2 * real.sqrt 2 :=
begin

  have h₃ : y = 1 / y,
  { rw [h₁],
    exact pow_eq_one_iff.2 h₁ },
  have h₄ : 6 * x^2 = 2 * (6 * (1 / y)^2),
  { rw h₂ },
  have h₅ : 6 * x^2 = 2 * (6 * (1 / y^2)),
  { rw pow_inv h₁ },
  have h₆ : 6 * x^2 = 12 * (1 / y^2),
  { rw h₅ },
  have h₇ : x^2 = 2 * (1 / y^2),
  { rw h₆ },
  have h₈ : x^2 = 2 * (1 / (1 / y)),
  { rw pow_inv h₁ },
  have h₉ : x^2 = 2 * y,
  { rw h₈ },
  have h₁₀ : x^2 = 2 * real.sqrt 2 * real.sqrt 2,
  { rw [h₉, real.sqrt_mul] },
  have h₁₁ : x^2 = 2 * (real.sqrt
end
