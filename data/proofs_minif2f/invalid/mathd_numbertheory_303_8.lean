import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_303
  (S : finset ℕ)
  (h₀ : ∀ (n : ℕ), n ∈ S ↔ 2 ≤ n ∧ 171 ≡ 80 [MOD n] ∧ 468 ≡ 13 [MOD n]) :
  ∑ k in S, k = 111 :=
begin

  rw finset.sum_eq_mul_card,
  rw finset.card_eq_sup,
  refine le_antisymm (finset.sup_le _ _) (finset.le_sup _),
  { rintro n hn,
    have h₁ := h₀ n,
    have h₂ := h₁.1,
    have h₃ := h₁.2.1,
    have h₄ := h₁.2.2,
    have h₅ := h₃ + h₄,
    have h₆ := h₅.succ,
    have h₇ := h₆.div 2,
    have h₈ := h₇.1,
    have h₉ := h₇.2,
    have h₁₀ := h₉ + h₈,
    have h₁₁ := h₁₀.succ,
    have h₁₂ := h₁₁.div 2,
    have h₁₃ := h₁₂.1,
    have h₁₄ := h₁₂.2,
    have h₁₅ := h₁₄ + h₁₃,
    have h₁₆ := h₁₅.succ,
    have h₁₇ := h₁₆.div
end
