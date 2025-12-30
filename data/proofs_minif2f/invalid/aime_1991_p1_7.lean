import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem aime_1991_p1
  (x y : ℕ)
  (h₀ : 0 < x ∧ 0 < y)
  (h₁ : x * y + (x + y) = 71)
  (h₂ : x^2 * y + x * y^2 = 880) :
  x^2 + y^2 = 146 :=
begin

  have h₃ : x * y ≠ 0,
  { cases h₀ with hx₀ hy₀,
    refine mt (mul_ne_zero _ _).mpr (ne_of_lt hx₀) (ne_of_lt hy₀) },
  have h₄ : x^2 * y + x * y^2 = x * y * (x + y),
  { rw mul_add },
  have h₅ : x^2 * y + x * y^2 = 880,
  { assumption },
  have h₆ : x * y * (x + y) = 880,
  { rw h₄ at h₅ },
  have h₇ : x * y ≠ 0,
  { exact h₃ },
  have h₈ : x + y ≠ 0,
  { have h₉ : x * y ≠ 0,
    { exact h₇ },
    have h₁₀ : x * y ≠ 0 → x + y ≠ 0,
    { intros h₁₁,
      by_contradiction h₁₂,
      have h₁₃ : x * y = 0,
      { cases h₁₁ with hx₁₁ hy₁₁,
        refine mt
end
