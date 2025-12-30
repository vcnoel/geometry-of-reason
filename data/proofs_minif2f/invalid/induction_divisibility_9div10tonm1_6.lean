import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem induction_divisibility_9div10tonm1
  (n : ℕ)
  (h₀ : 0 < n) :
  9 ∣ (10^n - 1) :=
begin

  induction n with n ih,
  { have h₀ := nat.pos_of_ne_zero (nat.succ_pos 0),
    show 9 ∣ 10^0 - 1,
    by simp [h₀] },
  { have h₀ := nat.pos_of_ne_zero (nat.succ_pos n),
    have h₁ := ih h₀,
    have h₂ := nat.div_add_mod 10 9 (10^n),
    have h₃ := nat.div_eq_of_div_mod_eq h₂,
    have h₄ := h₃ rfl,
    have h₅ := h₄,
    show 9 ∣ 10^(n+1) - 1,
    by { rw [h₅, add_sub_cancel_left, mul_one, sub_sub_cancel_left] } }

end
