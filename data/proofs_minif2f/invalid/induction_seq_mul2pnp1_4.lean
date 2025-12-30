import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem induction_seq_mul2pnp1
  (n : ℕ)
  (u : ℕ → ℕ)
  (h₀ : u 0 = 0)
  (h₁ : ∀ n, u (n + 1) = 2 * u n + (n + 1)) :
  u n = 2^(n + 1) - (n + 2) :=
begin

  induction n with n IH generalizing u,
  { simp at h₀,
    rw h₀ },
  { rw h₁ at IH,
    simp only [nat.succ_eq_add_one, add_assoc, nat.add_sub_cancel, nat.succ_pred_eq_of_pos, le_add_right, add_le_add_left, succ_pred_eq_sub_one] at IH,
    rw IH,
    rw add_assoc,
    rw add_assoc,
    rw add_assoc,
    rw ←add_assoc,
    rw ←add_assoc,
    rw ←add_assoc,
    rw add_assoc,
    rw add_assoc,
    rw ←add_assoc,
    rw ←add_assoc,
    rw add_assoc,
    rw add_assoc,
    rw ←add_assoc,
    rw ←add_assoc,
    rw add_assoc,
    rw add_assoc,
    rw ←add_assoc,
    rw ←add_assoc,
    rw add_assoc,
    rw add_assoc,
    rw ←add_assoc,
    rw ←add_assoc,
    rw add_assoc,
    rw add_assoc,
    rw ←add_assoc,
    rw ←add_assoc,
    rw add_assoc,
    rw add_assoc,
    rw ←add_assoc,
    rw ←add_assoc,
    rw add_assoc,
    rw add_assoc,
    rw
end
