import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1987_p6
  (p : ℕ)
  (f : ℕ → ℕ)
  (h₀ : ∀ x, f x = x^2 + x + p)
  (h₀ : ∀ k : ℕ, k ≤ nat.floor (real.sqrt (p / 3)) → nat.prime (f k)) :
  ∀ i ≤ p - 2, nat.prime (f i) :=
begin

  intro i,
  by_cases h : i = 0,
  { subst h,
    exact h₀ 0 },
  { by_cases h : i = 1,
    { subst h,
      exact h₀ 1 },
    { have h₂ : i ≤ nat.floor (real.sqrt (p / 3)),
      { have h₁ : i^2 ≤ p,
        { rw [← nat.succ_pred_eq_of_pos (nat.pos i)],
          apply nat.succ_le_succ,
          apply nat.lt_le_of_add_one_le i },
        have h₃ : i^2 < p,
        { rwa [lt_floor_of_lt (real.sqrt p) zero_lt_one] at h₁ },
        have h₄ : i < nat.floor (real.sqrt (p / 3)),
        { apply lt_floor_of_lt (real.sqrt (p / 3)),
          apply nat.lt_of_lt_of_le h₃ (div_le_div_left h₁ one_lt_three) },
        exact le_trans h₄ le_floor },
      exact h₀ i h₂ } } }

end
