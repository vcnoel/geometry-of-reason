import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem aimeII_2020_p6
  (t : ℕ → ℚ)
  (h₀ : t 1 = 20)
  (h₁ : t 2 = 21)
  (h₂ : ∀ n ≥ 3, t n = (5 * t (n - 1) + 1) / (25 * t (n - 2))) :
  ↑(t 2020).denom + (t 2020).num = 626 :=
begin

  -- We will prove the statement by induction on n.
  induction n with n IH generalizing t,
  { -- Base case n = 1
    have h₃ := h₀,
    have h₄ := h₁,
    have h₅ := h₂ 3 (ge_of_gt one_lt_two),
    have h₆ := h₅.succ,
    have h₇ := h₆.succ,
    have h₈ := h₇.succ,
    have h₉ := h₈.succ,
    have h₁₀ := h₉.succ,
    have h₁₁ := h₁₀.succ,
    have h₁₂ := h₁₁.succ,
    have h₁₃ := h₁₂.succ,
    have h₁₄ := h₁₃.succ,
    have h₁₅ := h₁₄.succ,
    have h₁₆ := h₁₅.succ,
    have h₁₇ := h₁₆.succ,
    have h₁₈ := h₁₇.succ,
    have h₁₉ := h₁₈.succ,
    have h₂₀ := h₁₉
end
