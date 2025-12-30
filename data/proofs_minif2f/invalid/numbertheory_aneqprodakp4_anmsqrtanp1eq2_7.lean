import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem numbertheory_aneqprodakp4_anmsqrtanp1eq2
  (a : ℕ → ℝ)
  (h₀ : a 0 = 1)
  (h₁ : ∀ n, a (n + 1) = (∏ k in finset.range (n + 1), (a k)) + 4) :
  ∀ n ≥ 1, a n - real.sqrt (a (n + 1)) = 2 :=
begin

  intro n,
  induction n with n ih,
  { have h₀ := h₀,
    have h₁ := h₁ 0,
    have h₂ := real.sqrt (a 1) = 1,
    have h₃ := real.sqrt (a 1) = 1,
    have h₄ := h₁ = 1,
    have h₅ := h₄,
    have h₆ := h₅,
    have h₇ := h₆,
    have h₈ := h₇,
    have h₉ := h₈,
    have h₁₀ := h₉,
    have h₁₁ := h₁₀,
    have h₁₂ := h₁₁,
    have h₁₃ := h₁₂,
    have h₁₄ := h₁₃,
    have h₁₅ := h₁₄,
    have h₁₆ := h₁₅,
    have h₁₇ := h₁₆,
    have h₁₈ := h₁₇,
    have h₁₉ := h₁₈,
    have h₂₀ := h₁₉,
    have h₂₁ := h₂₀,

end
