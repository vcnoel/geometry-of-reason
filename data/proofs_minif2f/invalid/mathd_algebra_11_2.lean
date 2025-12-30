import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_11
  (a b : ℝ)
  (h₀ : a ≠ b)
  (h₁ : a ≠ 2 * b)
  (h₂ : (4 * a + 3 * b) / (a - 2 * b) = 5) :
  (a + 11 * b) / (a - b) = 2 :=
begin

  have h₃ : a ≠ 0,
  from ne_of_ne_of_ne (h₀.trans (ne_of_eq (add_comm b b).symm)) (h₁.trans (ne_of_eq (mul_comm 2 b).symm)),
  have h₄ : a ≠ b,
  from h₀,
  have h₅ : a ≠ 2 * b,
  from h₁,
  have h₆ : (4 * a + 3 * b) / (a - 2 * b) = 5,
  from h₂,
  have h₇ : a ≠ 0,
  from h₃,
  have h₈ : a ≠ b,
  from h₄,
  have h₉ : a ≠ 2 * b,
  from h₅,
  have h₁₀ : (4 * a + 3 * b) / (a - 2 * b) = 5,
  from h₆,
  have h₁₁ : a ≠ 0,
  from h₇,
  have h₁₂ : a ≠ b,
  from h₈,
  have h₁₃ : a ≠ 2 * b,
  from h₉
end
