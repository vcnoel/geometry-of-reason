import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem numbertheory_aneqprodakp4_anmsqrtanp1eq2
  (a : ℕ → ℝ)
  (h₀ : a 0 = 1)
  (h₁ : ∀ n, a (n + 1) = (∏ k in finset.range (n + 1), (a k)) + 4) :
  ∀ n ≥ 1, a n - real.sqrt (a (n + 1)) = 2 :=
begin

  intros n hn,
  have h₂ : ∀ k in finset.range (n + 1), a k = 2,
  { intros k hk,
    induction k with k ihk,
    { exact h₀ },
    { exact (h₁ k).symm.subst ihk } },
  have h₃ : ∏ k in finset.range (n + 1), a k = (n + 1) * 2,
  { rw finset.prod_const,
    simp },
  have h₄ : a (n + 1) = (n + 1) * 2 + 4,
  { rw h₃, exact h₁ n },
  have h₅ : a (n + 1) = 2 * (n + 1) + 4,
  { rw h₄ },
  have h₆ : a (n + 1) = 2 * (n + 1) + 4,
  { rw h₅ },
  have h₇ : a n - real.sqrt (a (n + 1)) = 2,
  { rw h₆,
    have h₈ : real.sqrt (2 * (n +
end
