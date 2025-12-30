import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem aime_1988_p4
  (n : ℕ)
  (a : ℕ → ℝ)
  (h₀ : ∀ n, abs (a n) < 1)
  (h₁ : ∑ k in finset.range n, (abs (a k)) = 19 + abs (∑ k in finset.range n, a k)) :
  20 ≤ n :=
begin

  by_contra h,
  have h₂ := h₁,
  have h₃ := abs_nonneg (∑ k in finset.range n, a k),
  have h₄ := h₂.trans (le_add_of_le_sub h₃ h₃),
  have h₅ := abs_sub_sub_right (abs (∑ k in finset.range n, a k)) (abs (∑ k in finset_range n, a k)) 19,
  have h₆ := h₄.trans h₅,
  have h₇ := h₆.sub h₃,
  have h₈ := abs_nonneg (19),
  have h₉ := h₇.trans h₈,
  have h₁₀ := h₉.sub h₃,
  have h₁₁ := h₁₀.abs,
  have h₁₂ := h₁₁.trans h₀,
  have h₁₃ := h₁₂.sub h₀,
  have h₁₄ := h₁₃.abs,
  have h₁₅ := h₁₄.trans h₀,
  have h₁₆ := h₁₅.sub h₀,
  have h₁₇ := h₁₆.abs,
  have h
end
