import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2002_p21
  (u : ℕ → ℕ)
  (h₀ : u 0 = 4)
  (h₁ : u 1 = 7)
  (h₂ : ∀ n ≥ 2, u (n + 2) = (u n + u (n + 1)) % 10) :
  ∀ n, ∑ k in finset.range(n), u k > 10000 → 1999 ≤ n :=
begin

  intro n,
  induction n with n IH,
  { contradiction },
  { cases n with n,
    { contradiction },
    { cases n with n,
      { contradiction },
      { have h₃ : u (n + 1) = (u (n - 1) + u n) % 10, from h₂ (n - 1),
        have h₄ : u (n + 2) = (u (n - 1) + u n + u (n + 1)) % 10, from h₂ (n - 1),
        have h₅ : u (n + 2) = (u (n - 1) + u n + (u (n - 1) + u n) % 10) % 10,
          from congr_arg (λ x, (x + (u (n - 1) + u n) % 10) % 10) h₃,
        have h₆ : u (n + 2) = (u (n - 1) + 2 * u n) % 10, from congr_arg (λ x, x % 10) h₅,
        have h₇
end
