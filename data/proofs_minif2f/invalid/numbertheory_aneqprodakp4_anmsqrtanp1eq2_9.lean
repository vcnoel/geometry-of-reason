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
  induction n generalizing a,
  case nat.zero {
    rw [h₀, h₁, h₀, sqrt_one, sub_zero],
  },
  case nat.succ n {
    by_cases h₁ : n + 1 ≥ 1,
    { have h₂ : n ≥ 1 := nat.succ_le_succ h₁,
      have h₃ : n + 1 ≥ 2 := nat.succ_le_succ h₁,
      have h₄ : n + 2 ≥ 2 := nat.succ_le_succ h₂,
      have h₅ : a (n + 1) = (∏ k in finset.range (n + 1), (a k)) + 4,
        by { apply h₁, },
      have h₆ : a (n + 1) = a n * a (n + 1) + 4,
        by { rw [finset.range_succ, prod_insert],
             { apply h₁, },
             { simp, },
             { rw [h₅, h₅], },
             { rw [prod_singleton, mul_one], },
             { simp, },
             { simp, },
             { simp, },
             {
end
