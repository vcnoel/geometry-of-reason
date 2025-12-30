import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2009_p5
  (x : ℝ)
  (h₀ : x^3 - (x + 1) * (x - 1) * x = 5) :
  x^3 = 125 :=
begin

  have h₁ : x^3 - (x + 1) * (x - 1) * x = 5,
  from h₀,
  have h₂ : x^3 - x^3 + x^2 - x = 5,
  from by {
    ring_nf at h₁,
    rw [pow_three x, pow_two x],
    ring_nf,
  },
  have h₃ : x^2 - x = 5,
  from by {
    have h₄ : x^3 - x^3 + x^2 - x = x^2 - x,
    from by {
      ring_nf at h₂,
      cancel x^3,
    },
    have h₅ : x^2 - x = 5,
    from h₄.symm,
  },
  have h₆ : x^2 = 5 + x,
  from by {
    have h₇ : x^2 = x + 5,
    from by {
      rw h₃,
      ring_nf,
    },
    have h₈ : x^2 = 5 + x,
    from h₇,
  },
  have h₉ : x^2 - 5 =
end
