import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_247
  (t s : ℝ)
  (n : ℤ)
  (h₀ : t = 2 * s - s^2)
  (h₁ : s = n^2 - 2^n + 1)
  (n = 3) :
  t = 0 :=
begin

  have h₂ : s = n^2 - 2^n + 1,
  from h₁,

  have h₃ : n = 3,
  from n,

  have h₄ : s = 3^2 - 2^3 + 1,
  from h₂,

  have h₅ : s = 9 - 8 + 1,
  from h₄,

  have h₆ : s = 2,
  from h₅,

  have h₇ : t = 2 * s - s^2,
  from h₀,

  have h₈ : t = 2 * 2 - 2^2,
  from h₇,

  have h₉ : t = 4 - 4,
  from h₈,

  have h₁₀ : t = 0,
  from h₉,

  exact h₁₀

end
