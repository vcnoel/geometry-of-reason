import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12_2000_p11
  (a b : ℝ)
  (h₀ : a ≠ 0 ∧ b ≠ 0)
  (h₁ : a * b = a - b) :
  a / b + b / a - a * b = 2 :=
begin

  have h₂ : a * b = a - b,
  from h₁,

  have h₃ : a * b = b - a,
  from by { rw h₂; refl },

  have h₄ : a * b + b * a = a * b + a * b,
  from by { rw h₃; refl },

  have h₅ : a * b + b * a = 2 * a * b,
  from by { rw h₄; ring },

  have h₆ : a * b + b * a - a * b = b * a,
  from by { rw h₅; ring },

  have h₇ : a * b + b * a - a * b = b * a - a * b,
  from by { rw h₆; refl },

  have h₈ : a * b + b * a - a * b = (b - a) * a,
  from by { rw h₃; refl },

  have h₉ : a * b + b * a - a * b = a * (b - a),
  from by { rw h₈; refl },

  have h₁₀ : a * b
end
