import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12b_2021_p21
  (S : finset ℝ)
  (h₀ : ∀ (x : ℝ), x ∈ S ↔ 0 < x ∧ x^((2 : ℝ)^real.sqrt 2) = (real.sqrt 2)^((2 : ℝ)^x)) :
  ↑2 ≤ ∑ k in S, k ∧ ∑ k in S, k < 6 :=
begin

  have h₁ := h₀ 0,
  have h₂ := h₀ (real.sqrt 2),
  have h₃ := h₀ (real.sqrt 2 + 1),
  have h₄ := h₀ (real.sqrt 2 + 2),
  have h₅ := h₀ (real.sqrt 2 + 3),
  have h₆ := h₀ (real.sqrt 2 + 4),
  have h₇ := h₀ (real.sqrt 2 + 5),
  have h₈ := h₀ (real.sqrt 2 + 6),
  have h₉ := h₀ (real.sqrt 2 + 7),
  have h₁₀ := h₀ (real.sqrt 2 + 8),
  have h₁₁ := h₀ (real.sqrt 2 + 9),
  have h₁₂ := h₀ (real.sqrt 2 + 10),
  have h₁₃ := h₀ (real.sqrt 2 + 11),
  have h₁₄ := h₀ (real.sqrt 2 + 12),
  have h₁₅ := h₀ (real.sqrt 2 + 13),
  have h₁₆ := h₀ (real
end
