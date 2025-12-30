import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2013_p8
  (x y : ℝ)
  (h₀ : x ≠ 0)
  (h₁ : y ≠ 0)
  (h₂ : x ≠ y)
  (h₃ : x + 2 / x = y + 2 / y) :
  x * y = 2 :=
begin

  have h₄ : x ≠ 0 ∨ y ≠ 0 := or.inl h₀,
  have h₅ : x ≠ 0 ∨ y ≠ 0 := or.inr h₁,
  have h₆ : x ≠ 0 ∨ y ≠ 0 := or.inl h₀,
  have h₇ : x ≠ 0 ∨ y ≠ 0 := or.inr h₁,
  have h₈ : x ≠ 0 ∨ y ≠ 0 := or.inl h₀,
  have h₉ : x ≠ 0 ∨ y ≠ 0 := or.inr h₁,
  have h₁₀ : x ≠ 0 ∨ y ≠ 0 := or.inl h₀,
  have h₁₁ : x ≠ 0 ∨ y ≠ 0 := or.inr h₁,
  have h₁₂ : x ≠ 0 ∨ y ≠ 0 := or.inl h₀,
  have h₁₃ : x ≠ 0 ∨ y ≠ 0 := or.inr h₁,
  have h₁₄ : x ≠ 0 ∨ y ≠ 0 := or.inl h₀,
  have h₁₅ : x ≠ 0 ∨ y
end
