import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_421
  (a b c d : ℝ)
  (h₀ : b = a^2 + 4 * a + 6)
  (h₁ : b = 1 / 2 * a^2 + a + 6)
  (h₂ : d = c^2 + 4 * c + 6)
  (h₃ : d = 1 / 2 * c^2 + c + 6)
  (h₄ : a ≤ c) :
  c - a = 6 :=
begin

  have h₅ : a^2 + 4 * a + 6 = 1 / 2 * a^2 + a + 6,
  by exact h₀,

  have h₆ : c^2 + 4 * c + 6 = 1 / 2 * c^2 + c + 6,
  by exact h₂,

  have h₇ : (a - c)^2 = (a - c) * (c - a),
  by ring,

  have h₈ : (a - c) * (c - a) = -(c - a)^2,
  by ring,

  have h₉ : (a - c)^2 = -(c - a)^2,
  by exact h₇,

  have h₁₀ : (a - c)^2 = (c - a)^2,
  by exact h₉,

  have h₁₁ : a - c = c - a,
  by exact pow_pos h₁₀ 1,

  have h₁₂ : 2 * (c - a) = 0,
  by exact mul_eq_zero h₁₁,

  have h₁₃ : c - a = 0,
 
end
