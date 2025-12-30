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
  { rw [h₀, nat.one_sub_one, pow_zero, nat.sub_zero, nat.zero_sub, nat.sub_zero, nat.zero_sub],
    refl },
  { have h₁' : u (n + 1) = 2 * u n + (n + 2),
    { rw h₁ },
    have h₂ : 2 * u n + (n + 2) = 2 * (2^n - (n + 1)) + (n + 2),
    { rw ih },
    have h₃ : 2 * (2^n - (n + 1)) + (n + 2) = 2^(n + 1) - 2 * (n + 1) + (n + 2),
    { ring },
    have h₄ : 2^(n + 1) - 2 * (n + 1) + (n + 2) = 2^(n + 1) - (n + 2),
    { ring },
    rw [h₁', h₂, h₃, h₄],
    refl }

end
