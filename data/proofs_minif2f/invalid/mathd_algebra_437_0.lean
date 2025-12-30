import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_437
  (x y : ℝ)
  (n : ℤ)
  (h₀ : x^3 = -45)
  (h₁ : y^3 = -101)
  (h₂ : x < n)
  (h₃ : ↑n < y) :
  n = -4 :=
begin

  have h₄ : n^3 = -121,
  by {
    have h₅ : (n + 4)^3 = n^3 + 3 * n^2 * 4 + 6 * n * 4^2 + 4^3,
    by {
      ring,
    },
    have h₆ : (n + 4)^3 = n^3 + 12 * n^2 + 96 * n + 64,
    by {
      ring,
    },
    have h₇ : (n + 4)^3 = n^3 + 12 * n^2 + 96 * n + 64,
    by {
      ring,
    },
    have h₈ : (n + 4)^3 = (n^3 + 12 * n^2 + 96 * n + 64) + 3 * n^2 * 4 + 6 * n * 4^2 + 4^3,
    by {
      ring,
    },
    have h₉ : (n + 4)^3 = (n^3 + 12 * n^2 + 96 * n + 64) + 48 * n
end
