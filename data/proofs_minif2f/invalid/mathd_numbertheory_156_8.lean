import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_156
  (n : ℕ)
  (h₀ : 0 < n) :
  nat.gcd (n + 7) (2 * n + 1) ≤ 13 :=
begin

  have h₁ : 2 * n + 1 ≥ 2 * 1 + 1, by linarith,
  have h₂ : 2 * n + 1 ≥ 2 * 2 + 1, by linarith,
  have h₃ : 2 * n + 1 ≥ 2 * 3 + 1, by linarith,
  have h₄ : 2 * n + 1 ≥ 2 * 4 + 1, by linarith,
  have h₅ : 2 * n + 1 ≥ 2 * 5 + 1, by linarith,
  have h₆ : 2 * n + 1 ≥ 2 * 6 + 1, by linarith,
  have h₇ : 2 * n + 1 ≥ 2 * 7 + 1, by linarith,
  have h₈ : 2 * n + 1 ≥ 2 * 8 + 1, by linarith,
  have h₉ : 2 * n + 1 ≥ 2 * 9 + 1, by linarith,
  have h₁₀ : 2 * n + 1 ≥ 2
end
