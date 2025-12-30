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

  induction n with n IH,
  { exfalso,
    exact (lt_irrefl 0).elim h₀ },
  { have h₁ := IH,
    have h₂ := pow_pos (lt_of_le_of_lt (zero_le _) h₀) n,
    have h₃ := sub_eq_iff_eq_add'.mp (sub_eq_iff_eq_add' (pow_succ _ _)),
    have h₄ := add_comm _ _,
    have h₅ := add_sub_cancel _ _,
    have h₆ := (mul_assoc 9 10 1).symm,
    have h₇ := (eq_mul_div h₆).symm,
    have h₈ := (mul_assoc 10 (10^n - 1) 1).symm,
    have h₉ := (eq_mul_div h₈).symm,
    have h₁₀ := add_comm 1 (10^n - 1),
    have h₁₁ := add_sub_cancel _ _,
    have h₁₂ := (add_assoc 1 (10^n - 1) 10^n).symm,
    have h₁₃ := (eq_add_sub_of_add_assoc h₁₂),
    have h
end
