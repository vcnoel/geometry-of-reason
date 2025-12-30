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

  induction n with k ih,
  { refl },
  { cases k with k hk,
    { cases n with n hn,
      { rw [h₁, h₀] },
      { have := h₁ n,
        rw [add_assoc, add_comm, add_assoc] at this,
        have := add_assoc (2 * (2^(k + 1) - (k + 2))) k,
        rw [add_assoc, add_comm, add_assoc] at this,
        have := add_assoc (2 * (2^(k + 1) - (k + 2))) (k + 1),
        rw [add_assoc, add_comm, add_assoc] at this,
        have := add_assoc (2 * (2^(k + 1) - (k + 2))) (k + 1),
        rw [add_assoc, add_comm, add_assoc] at this,
        have := add_assoc (2 * (2^(k + 1) - (k + 2))) (k + 1),
        rw [add_assoc, add_comm, add_assoc] at this,
        have := add_assoc (2 * (2^(k + 1) - (k + 2)))
end
