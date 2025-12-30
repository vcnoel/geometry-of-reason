import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1961_p1
  (x y z a b : ℝ)
  (h₀ : 0 < x ∧ 0 < y ∧ 0 < z)
  (h₁ : x ≠ y)
  (h₂ : y ≠ z)
  (h₃ : z ≠ x)
  (h₄ : x + y + z = a)
  (h₅ : x^2 + y^2 + z^2 = b^2)
  (h₆ : x * y = z^2) :
  0 < a ∧ b^2 < a^2 ∧ a^2 < 3 * b^2 :=
begin

  have h₇ : x * y = z^2,
  from h₆,

  have h₈ : (x * y) * (y * z) = z^4,
  from by { rw h₇, ring },

  have h₉ : (x * y) * (y * z) ≠ 0,
  from by { apply mul_ne_zero, exact h₂ },

  have h₁₀ : x * y * y * z = z^4,
  from h₈,

  have h₁₁ : x * y * y * z = (x * y) * (y * z),
  from h₁₀,

  have h₁₂ : x * y * (y * z) ≠ 0,
  from by { apply mul_ne_zero, exact h₂ },

  have h₁₃ : x * y ≠ 0,
  from by { apply mul_ne_zero, exact h₁ },

  have h₁₄ : y * z ≠ 0,
  from by { apply mul_ne_zero, exact h₂ },

  have h₁₅ : y * z ≠ 0,
  from h₁₄,

  have h₁₆ : x
end
