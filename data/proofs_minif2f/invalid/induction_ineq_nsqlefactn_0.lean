import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem induction_ineq_nsqlefactn
  (n : ℕ)
  (h₀ : 4 ≤ n) :
  n^2 ≤ n! :=
begin

  induction n with n IH,
  { simp only [fact_one, pow_zero, nat.zero_le, le_refl, one_le_one] },
  { cases h₀ with h₀ h₀,
    { contradiction },
    { have h₁ : 4 ≤ n.succ := h₀,
      have h₂ : n.succ^2 = n^2 + 2*n + 1 := by { unfold pow, refl },
      have h₃ : n.succ! = n! * (n.succ) := by { unfold fact, refl },
      have h₄ : n^2 + 2*n + 1 ≤ n! * (n.succ) := by {
        calc
          n^2 + 2*n + 1
          ≤ n! * (n.succ)
        using (add_le_add (mul_le_mul_of_nonneg_left h₂ h₁) (le_refl 2))
      },
      have h₅ : n^2 + 2*n + 1 ≤ n! * (n.succ) := by {
        have h₆ : n^2 + 2*n + 1 ≤ n! * n.succ := h₄,
        have h�
end
