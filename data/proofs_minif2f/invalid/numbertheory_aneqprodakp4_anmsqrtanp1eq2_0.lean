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
  induction n with n ih,
  { cases hn with hn },
  { have h₂ : a (n + 1) = (∏ k in finset.range (n + 1), (a k)) + 4 := h₁ (n + 1),
    have h₃ : (∏ k in finset.range n, (a k)) + a n = (∏ k in finset.range (n + 1), (a k)),
    { rw finset.prod_range_succ,
      congr },
    have h₄ : (∏ k in finset.range n, (a k)) + a n = (∏ k in finset.range (n + 1), (a k)) + 4,
    { rw h₃ },
    have h₅ : (∏ k in finset.range n, (a k)) + a n - real.sqrt ((∏ k in finset.range (n + 1), (a k)) + 4) = (∏ k in finset.range n, (a k)) + a n - real.sqrt ((∏ k in finset.range n, (a k)) + a n),
    { rw h₄ },
    have h
end
