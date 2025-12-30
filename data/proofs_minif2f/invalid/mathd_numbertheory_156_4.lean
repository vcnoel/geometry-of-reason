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

  have h₁ := nat.gcd_add_right 7 (2 * n + 1),
  have h₂ := nat.gcd_mul_left (n + 7) (2 * n + 1) 2,
  have h₃ := nat.gcd_le_left 2 (n + 7) (2 * n + 1) 2,
  have h₄ := nat.gcd_le_right (n + 7) (2 * n + 1) 7,
  have h₅ := nat.gcd_le_right (n + 7) (2 * n + 1) 13,
  have h₆ := nat.gcd_le_right (n + 7) (2 * n + 1) 1,
  have h₇ := nat.gcd_le_left 2 (n + 7) (2 * n + 1) 1,
  have h₈ := nat.gcd_le_left 2 (n + 7) (2 * n + 1) 2,
  have h₉ := nat.gcd_le_right (n + 7) (2 * n + 1) 2,
  have h₁₀ := nat.g
end
