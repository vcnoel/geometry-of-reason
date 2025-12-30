import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_257
  (x : ℕ)
  (h₀ : 1 ≤ x ∧ x ≤ 100)
  (h₁ : 77∣(∑ k in (finset.range 101), k - x)) :
  x = 45 :=
begin

  have h₂ := sum_range (λ k, k - x),
  have h₃ := finset.sum_congr rfl h₁,
  have h₄ := h₃.trans (eq.trans (finset.sum_const_sub x) h₂),
  have h₅ := h₄.resolve_left (finset.sum_eq_zero_iff.2 (λ k hk, h₀._1.trans hk)),
  exact h₅.resolve_left (finset.sum_eq_zero_iff.2 (λ k hk, h₀._2.trans hk)),

end
