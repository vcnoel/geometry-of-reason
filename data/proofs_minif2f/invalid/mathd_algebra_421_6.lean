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

  have h₅ : c^2 - a^2 = 6 * (c - a),
  by {
    have h₆ : c^2 - a^2 = (c + a) * (c - a),
    by {
      ring,
    },
    have h₇ : (c + a) * (c - a) = (c - a) * (c + a),
    by {
      ring,
    },
    have h₈ : (c - a) * (c + a) = (c - a) * (a + c),
    by {
      ring,
    },
    have h₉ : (c - a) * (a + c) = (c - a) * (a + c),
    by {
      ring,
    },
    have h₁₀ : (c + a) = (a + c),
    by {
      ring,
    },
    have h₁₁ : c + a = a + c,
    by {
      ring,
    },
    have h₁₂ : (c - a) * (a + c) = (c - a) * (a + c),
    by {
      ring,
    },
    have h
end
