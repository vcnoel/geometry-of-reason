import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_13
  (a b : ℝ)
  (h₀ : ∀ x, (x - 3 ≠ 0 ∧ x - 5 ≠ 0) → 4 * x / (x^2 - 8 * x + 15) = a / (x - 3) + b / (x - 5)) :
  a = -6 ∧ b = 10 :=
begin

  have h₁ : ∀ x, (x - 3) * (x - 5) ≠ 0,
  { assume x : ℝ,
    have h₂ : x - 3 ≠ 0 ∨ x - 5 ≠ 0,
    { apply or.elim (ne_or_eq_of_ne (x - 3) 0),
      assume h₃ : x - 3 = 0,
      have h₄ : x - 5 ≠ 0,
      { assume h₅ : x - 5 = 0,
        have h₆ : x = 5,
        { assumption },
        have h₇ : x = 3,
        { assumption },
        have h₈ : 5 = 3,
        { rw [h₇, h₆] },
        show false,
        { exact h₈ rfl }},
      have h₉ : (x - 3) * (x - 5) ≠ 0,
      { rw [mul_ne_zero, or_comm, or_assoc, or_comm, or_assoc],
        exact h₄ ∨ h₃ }},
    have h₁₀ : (x - 3) * (x - 5) ≠ 
end
