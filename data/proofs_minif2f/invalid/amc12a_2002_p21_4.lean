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
  induction n with n ih,
  { simp at h₀,
    simp at h₁,
    simp [h₀, h₁],
    linarith },
  { have h₃ : u (n + 1) + u (n + 2) % 10 = u (n + 1) + u (n + 1) % 10,
    { rw [h₂, h₂, n.succ.succ],
      simp },
    have h₄ : u (n + 2) % 10 = u (n + 1) % 10,
    { rw h₃,
      simp },
    have h₅ : u (n + 2) = u (n + 1),
    { rw h₄,
      simp },
    have h₆ : u (n + 2) % 10 = u (n + 1) % 10,
    { rw h₅,
      simp },
    have h₇ : u (n + 2) % 10 = u (n + 2) % 10,
    { rw h₆,
      simp },
    have h₈ : u (n + 1
end
