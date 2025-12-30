import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_482
  (m n : ℕ)
  (k : ℝ)
  (f : ℝ → ℝ)
  (h₀ : nat.prime m)
  (h₁ : nat.prime n)
  (h₂ : ∀ x, f x = x^2 - 12 * x + k)
  (h₃ : f m = 0)
  (h₄ : f n = 0)
  (h₅ : m ≠ n) :
  k = 35 :=
begin

  have h₆ := nat.succ_pred_eq_of_lt (nat.pos_of_ne_zero h₃),
  have h₇ := nat.succ_pred_eq_of_lt (nat.pos_of_ne_zero h₄),
  have h₈ := h₂ m,
  have h₉ := h₂ n,
  have h₁₀ := h₆.elim_left h₇,
  have h₁₁ := h₈.elim_left h₉,
  have h₁₂ := h₁₀.elim_left h₁₁,
  have h₁₃ := h₅.elim_left h₁₂,
  have h₁₄ := h₁₃.elim_left h₈,
  have h₁₅ := h₁₄.elim_left h₉,
  have h₁₆ := h₁₅.elim_left h₁₀,
  have h₁₇ := h₁₆.elim_left h₁₁,
  have h₁₈ := h₁₇.elim_left h₆,
  have h₁₉ := h₁₈.elim_left h₇,
  have h₂₀ := h₁₉.elim_left h₈,
  have h
end
