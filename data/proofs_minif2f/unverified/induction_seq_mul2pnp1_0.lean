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
  {   -- base case
    rw h₀,
    rw zero_pow,
    rw sub_self,
  },
  {   -- inductive case
    have h₂ : 2 * u n + (n + 1) = 2 * (2^(n + 1) - (n + 2)) + (n + 1),
    {   -- left side
      rw h₁,
    },
    have h₃ : 2 * (2^(n + 1) - (n + 2)) + (n + 1) = 2^(n + 2) - 2 * (n + 2) + (n + 1),
    {   -- left side
      ring,
    },
    have h₄ : 2^(n + 2) - 2 * (n + 2) + (n + 1) = 2^(n + 2) - (2 * n + 4 + 1),
    {   -- left side
      ring,
    },
    have h₅ : 2^(n + 2) - (2 * n + 4 + 1) = 
end
