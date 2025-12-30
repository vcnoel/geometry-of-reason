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
  { simp [h₀] },
  { simp [h₁, ih] },

end
