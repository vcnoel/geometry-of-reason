import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_31
  (x : nnreal)
  (u : ℕ → nnreal)
  (h₀ : ∀ n, u (n + 1) = nnreal.sqrt (x + u n))
  (h₁ : filter.tendsto u filter.at_top (𝓝 9)) :
  9 = nnreal.sqrt (x + 9) :=
begin

  -- We will use the monotone convergence theorem, which states that if a sequence is monotone increasing and converges to a limit, then the limit is the supremum of the sequence.
  have h₂ : ∀ n, u n ≤ u (n + 1), from λ n, le_of_eq (h₀ n).symm,
  have h₃ : monotone u, from λ n m hnm, h₂ (m - 1 + n),
  have h₄ : ∀ ε > 0, ∃ N, ∀ n ≥ N, |u n - 9| < ε, from (t
end
