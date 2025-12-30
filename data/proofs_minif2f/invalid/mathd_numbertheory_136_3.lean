import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_136
  (n : ℕ)
  (h₀ : 123 * n + 17 = 39500) : n = 321 :=
begin

  -- 1 / 2
  have h₁ : 123 * n = 39500 - 17 := by {rw [sub_eq_add_neg, ← add_assoc, ← add_assoc, ← add_assoc], exact h₀},
  -- 2 / 2
  have h₂ : n = (39500 - 17) / 123 := by {rw [div_eq_mul_inv, mul_comm], exact h₁},
  -- 3 / 3
  have h₃ : (39500 - 17) / 123 = 321 := by {calc (39500 - 17) / 123 = 39500 / 123 - 17 / 123 : by rw [sub_div]
   ... = 323 - 17 / 123 : by {rw [div_eq_mul_inv, mul_comm], exact div_eq_div_iff (123 * 321 = 39570) (123 * 0 = 0)}
   ... = 323 - 0.1373 : by {rw [div_eq_mul_inv, mul_comm], exact div_eq_div_iff (123 * 321 = 39570) (123 * 0 = 0)}
   ... = 323 - 17
end
