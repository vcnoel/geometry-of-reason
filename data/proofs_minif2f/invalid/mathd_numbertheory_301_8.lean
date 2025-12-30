import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_301
  (j : ℕ)
  (h₀ : 0 < j) :
  (3 * (7 * ↑j + 3)) % 7 = 2 :=
begin

  have h₁ : 0 < 7 * j + 3 := by linarith,
  have h₂ : 0 ≤ 3 * (7 * j + 3) := by linarith,
  have h₃ : 3 * (7 * j + 3) % 7 = 3 * (7 * j + 3 - 7 * j - 3) % 7 := by linarith,
  have h₄ : 3 * (7 * j + 3 - 7 * j - 3) % 7 = 3 * (0) % 7 := by linarith,
  have h₅ : 3 * (0) % 7 = 0 := by linarith,
  have h₆ : 0 = 2 + (7 * 0) := by linarith,
  have h₇ : 2 + (7 * 0) = 2 := by linarith,
  have h₈ : (3 * (7 * j + 3)) % 7 = 2 := by linarith,
  exact h₈,

end
