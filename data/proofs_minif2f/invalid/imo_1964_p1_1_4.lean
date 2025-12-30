import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1964_p1_1
  (n : ℕ)
  (h₀ : 7 ∣ (2^n - 1)) :
  3 ∣ n :=
begin

  /- Step 1: Consider the case when n is odd. -/
  have h₁ : ∀ (n : ℕ) (h : 7 ∣ (2^n - 1)), 3 ∣ n,
  { intro n,
    intro h,
    have h₂ : 7 ∣ (2^(n + 1) - 1),
    { rw [succ_pred_eq, pred_succ, pred_pred_eq],
      exact h },
    exact h₁ (n + 1) h₂ },
  /- Step 2: Consider the case when n is even. -/
  have h₂ : ∀ (n : ℕ) (h : 7 ∣ (2^n - 1)), 3 ∣ n,
  { intro n,
    intro h,
    have h₃ : 7 ∣ (2^(n + 1) - 1),
    { rw [succ_pred_eq, pred_succ, pred_pred_eq],
      exact h },
    exact h₂ (n + 1) h₃ },
  /- Step 3: Combine the two cases. -/
  cases n with n,
  { exact h₁ n h₀ },
  { exact h₂ n h₀ },

end
