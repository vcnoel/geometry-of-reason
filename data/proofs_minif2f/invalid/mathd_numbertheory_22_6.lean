import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_22
  (b : ℕ)
  (h₀ : b < 10)
  (h₁ : nat.sqrt (10 * b + 6) * nat.sqrt (10 * b + 6) = 10 * b + 6) :
  b = 3 ∨ b = 1 :=
begin

  have h₂ := h₁,
  have h₃ := h₂ ▸ nat.sqrt (10 * b + 6) * nat.sqrt (10 * b + 6) = 10 * b + 6,
  have h₄ := h₃ ▸ (10 * b + 6) / 2 = nat.sqrt (10 * b + 6),
  have h₅ := h₄ ▸ (10 * b + 6) / 2 ≥ 0,
  have h₆ := h₅ ▸ 0 ≤ (10 * b + 6) / 2,
  have h₇ := h₆ ▸ (10 * b + 6) / 2 ≥ 0,
  have h₈ := h₇ ▸ 0 ≤ (10 * b + 6) / 2,
  have h₉ := h₈ ▸ 0 ≤ (10 * b + 6) / 2,
  have h₁₀ := h₉ ▸ 0 ≤ (10 * b + 6) / 2,
  have h₁₁ := h₁₀ ▸ (10 * b + 6) / 
end
