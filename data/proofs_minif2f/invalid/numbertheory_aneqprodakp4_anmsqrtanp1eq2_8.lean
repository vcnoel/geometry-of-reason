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
  have h₂ := h₁ n,
  have h₃ : ∀ k in finset.range (n + 1), k ≥ 0 := λ k hk, by simp [hk],
  have h₄ : finset.range (n + 1) = finset.range n ⊔ finset.range 1 := by
    ext k; simp [finset.mem_range, finset.mem_union],
  have h₅ : (∏ k in finset.range (n + 1), (a k)) = (∏ k in finset.range n, (a k)) * (a 0) := by
    simp [h₄, h₃, finset.prod_range_add, h₀],
  have h₆ : a (n + 1) = (∏ k in finset.range n, (a k)) + 4 := by
    simp [h₅, h₀],
  have h₇ : a (n + 1) ≥ 5 := by
    simp [h₆, h₀, h₃, h₄, real.sqrt_pos, finset.prod_pos],
  have h₈ : real.sqrt (a (n
end
