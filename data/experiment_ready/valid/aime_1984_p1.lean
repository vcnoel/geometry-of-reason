import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem aime_1984_p1
  (u : ℕ → ℚ)
  (h₀ : ∀ n, u (n + 1) = u n + 1)
  (h₁ : ∑ k in finset.range 98, u k.succ = 137) :
  ∑ k in finset.range 49, u (2 * k.succ) = 93 :=
begin
  -- We will use sum_pairs and h₀ to rewrite h₁ and the goal in terms of the quantity
  -- ∑ k in finset.range 49, u (2 * k + 1).

  have h₂ : ∀ k, k ∈ finset.range 49 → u (2 * k + 1 + 1) = u (2 * k + 1) + 1 :=
  by { intros k hk, exact h₀ (2 * k + 1) },

  have h₃: ∑ (x : ℕ) in finset.range 49, (1:ℚ) = 49 := by simp only [mul_one, nat.cast_bit0, finset.sum_const, nsmul_eq_mul, nat.cast_bit1, finset.card_range, nat.cast_one],

  have h98 : 98 = 2 * 49 := by norm_num,

  rw [h98, sum_pairs, finset.sum_add_distrib, finset.sum_congr rfl h₂,
     finset.sum_add_distrib, h₃, ←add_assoc] at h₁,

  have h₄ : ∑ (k : ℕ) in finset.range 49, u (2 * k.succ)
          = ∑ (k : ℕ) in finset.range 49, (u (2 * k + 1) + 1) :=
    finset.sum_congr rfl h₂,
  rw [h₄, finset.sum_add_distrib, h₃],

  linarith,
end