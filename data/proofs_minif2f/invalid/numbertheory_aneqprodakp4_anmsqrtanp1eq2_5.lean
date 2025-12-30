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

  intro n,
  induction n with n ih generalizing a,
  { apply h₁ },
  { calc
    a (n + 1) - real.sqrt (a (n + 2)) =
      ((∏ k in finset.range (n + 1), a k) + 4) - real.sqrt (a (n + 2)) :
      by rw h₁
   ... = ((∏ k in finset.range (n + 1), a k) - real.sqrt (a (n + 2))) + 4 :
      by ring
   ... = (a n - real.sqrt (a (n + 1))) * (∏ k in finset.range (n + 1), a k) + 4 :
      by { rw ih, ring }
   ... = ((a n - real.sqrt (a (n + 1))) * (∏ k in finset.range (n + 1), a k) - real.sqrt (a (n + 1))) + 4 + real.sqrt (a (n + 1)) :
      by ring
   ... = (a n - real.sqrt (a (n + 1))) * ((∏ k in finset.range
end
