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

  induction n with n ih,
  { intro h,
    have h₁ : 0 ∈ finset.range(n),
      by { cases n; [skip, exact dec_trivial] },
    have h₂ : u 0 = 4,
      by { exact h₀ },
    have h₃ : u 0 > 10000,
      by { exact h₂ },
    exact h₃ },
  { intro h,
    cases n,
    { exact dec_trivial },
    { have h₁ : 1 ∈ finset.range(n),
        by { cases n; [skip, exact dec_trivial] },
      have h₂ : u 1 = 7,
        by { exact h₁ },
      have h₃ : u 1 > 10000,
        by { exact h₂ },
      have h₄ : ∑ k in finset.range(n), u k = ∑ k in finset.range(n - 1), u k + u (n - 1),
        by { apply finset.sum_add_one },
      have h₅ : u (n - 1) = (u (n - 2) + u (n - 1)) % 10,
        by { apply
end
