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

  cases n,
  { simp [h₀] },
  { have h₂ : u (n + 1) = 2 * u n + (n + 1) := h₁ n,
    have h₃ : u n = 2^n - (n + 1),
    { induction n with n ih,
      { simp [h₀] },
      { have h₄ : u (n + 1) = 2 * u n + (n + 1) := h₁ n,
        have h₅ : 2 * u n + (n + 1) = 2^(n + 1) - (n + 1),
        { rw [ih, mul_add, add_sub, sub_sub],
          { rw [add_sub, sub_sub] },
          { rw [add_sub, sub_sub] },
          { rw [add_sub, sub_sub] } },
        rw [h₄, h₅] },
      { rw [h₃, h₂, mul_add, add_sub, sub_sub, add_sub, sub_sub, add_sub, sub_sub] } },
    have h₆ : u (n + 1) = 2 * u n
end
