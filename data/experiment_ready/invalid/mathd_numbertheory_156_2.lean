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

  cases n,
  { -- n = 0
    rw [gcd_zero_left, gcd_zero_left],
    exact le_refl 0,
  },
  { -- n = succ n'
  have h₁ : 0 < n', from succ_pos h₀,
  have h₂ : 7 < n + 7, from lt_add_one h₁,
  have h₃ : 2 * n' + 1 < 2 * (n + 7) + 1, from lt_add_one (mul_lt_mul h₁ (lt_add_one h₁)),
  have h₄ : 0 < 2 * n + 1, from mul_pos h₁ (lt_add_one h₁),
  have h₅ : 0 < n + 7, from add_pos h₁ (lt_add_one h₁),
  have h₆ : 0 < 2 * n + 1, from mul_pos h₁ (lt_add_one h₁),
  have h₇ : 0 < n + 7, from add_pos h₁ (lt_add_one h₁),
  have h₈ : 0 < 2 * n + 1, from mul_pos h₁ (lt_add_one
end
