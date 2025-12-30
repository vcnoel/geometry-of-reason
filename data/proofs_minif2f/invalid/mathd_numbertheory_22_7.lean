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

  have h₂ : b = 3 ∨ b = 1 := or.inr (or.inl h₀),
  have h₃ : b ≠ 4, by linarith,
  have h₄ : b ≠ 5, by linarith,
  have h₅ : b ≠ 6, by linarith,
  have h₆ : b ≠ 7, by linarith,
  have h₇ : b ≠ 8, by linarith,
  have h₈ : b ≠ 9, by linarith,
  have h₉ : b ≠ 10, by linarith,
  have h₁₀ : b ≠ 11, by linarith,
  have h₁₁ : b ≠ 12, by linarith,
  have h₁₂ : b ≠ 13, by linarith,
  have h₁₃ : b ≠ 14, by linarith,
  have h₁₄ : b ≠ 15, by linarith,
  have h₁₅ : b ≠ 16, by linarith,
  have h₁₆ : b ≠ 17, by linarith,
  have h₁₇ : b ≠ 18, by linarith,
  have h
end
