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
  by {
    rw h₀,
    rw h₁,
    congr,
  },
  have h₆ : c^2 + 4 * c + 6 = 1 / 2 * c^2 + c + 6,
  by {
    rw h₂,
    rw h₃,
    congr,
  },
  have h₇ : (c - a)^2 = 6,
  by {
    have h₈ : (c - a)^2 = c^2 - 2 * a * c + a^2,
    by {
      ring,
    },
    have h₉ : c^2 - 2 * a * c + a^2 = (c^2 + 4 * c + 6) - (a^2 + 4 * a + 6),
    by {
      rw h₆,
      rw h₅,
      congr,
    },
    have h₁₀ : (c^2 + 4 * c + 6) - (a^2 + 4 * a + 
end
