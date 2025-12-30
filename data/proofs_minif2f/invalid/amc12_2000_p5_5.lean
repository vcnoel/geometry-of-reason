import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12_2000_p5
  (x p : ℝ)
  (h₀ : x < 2)
  (h₁ : abs (x - 2) = p) :
  x - p = 2 - 2 * p :=
begin

  cases p with p_pos p_neg,
  { cases p_pos with p_pos p_nonneg,
    { have h₂ := abs_of_pos p_pos,
      have h₃ := h₁.sub h₂,
      have h₄ := h₃.succ_sub h₂,
      have h₅ := h₄.sub (h₂ * 2),
      have h₆ := h₅.succ_sub (h₂ * 2),
      have h₇ := h₆.sub (h₂ * 2),
      have h₈ := h₇.sub (h₂ * 2),
      have h₉ := h₈.sub (h₂ * 2),
      have h₁₀ := h₉.sub (h₂ * 2),
      have h₁₁ := h₁₀.sub (h₂ * 2),
      have h₁₂ := h₁₁.sub (h₂ * 2),
      have h₁₃ := h₁₂.sub (h₂ * 2),
      have h₁₄ := h₁₃.sub (h₂ * 2),
      have h₁₅ := h₁₄.sub (h₂ * 2),
      have h₁₆
end
