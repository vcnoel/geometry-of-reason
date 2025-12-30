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

  induction n with n ih,
  { rw h₀, },
  { have u_suc_n : u (n + 1) = 2 * u n + (n + 1),
    { rw h₁, },
    have ih_u_n : u n = 2^n - (n + 1),
    { rw ih, },
    have two_pow_suc_n : 2^(n + 1) = 2 * 2^n,
    { rw pow_succ, },
    have two_pow_suc_n_plus_n_plus_one : 2^(n + 1) = 2 * 2^n + 2,
    { rw two_pow_suc_n, },
    have two_pow_suc_n_plus_n_plus_one_plus_n_plus_one : 2^(n + 1) = 2 * 2^n + (n + 2),
    { rw two_pow_suc_n_plus_n_plus_one, },
    have two_pow_suc_n_plus_n_plus_one_plus_n_plus_one_eq_u_suc_n : 2^(n + 1) = u (n + 1),
    { rw u_suc_n, },
    have two_pow_suc_n_plus_n_plus_one_plus
end
