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
  induction n with n ih,
  { have h₂ : a 1 = a 0 + 4,
    by rw [h₁, finset.range_one, finset.prod_one],
    rw [h₀, h₂, real.sqrt_one, real.sqrt_add],
    { simp only [sub_self, add_zero, real.sqrt_zero] } },
  { have h₃ : a (n + 1) = (∏ k in finset.range (n + 1), (a k)) + 4,
    by rw [h₁],
    have h₄ : a (n + 2) = (∏ k in finset.range (n + 2), (a k)) + 4,
    by rw [h₁, finset.range_succ],
    have h₅ : a (n + 2) = (∏ k in finset.range (n + 1), (a k)) * (a (n + 1)) + 4,
    by rw [finset.range_succ, finset.prod_cons, h₃, finset.prod_one],
    have h₆ : a (n + 2) - real.sqrt (a (n + 
end
