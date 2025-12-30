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

  induction n with n ih,
  { exact le_refl (0^2), },
  { have h₁ : n.succ^2 = n^2 + 2 * n, by {rw [nat.succ_eq_add_one], refl, },
    have h₂ : n.succ! = n! * (n.succ), by {rw [factorial], rw [factorial], refl, },
    have h₃ : n.succ! = n.succ * n!, by {rw [h₂], refl, },
    have h₄ : n.succ.succ^2 = n.succ^2 + 2 * n.succ, by {rw [h₁], refl, },
    have h₅ : n.succ.succ! = n.succ.succ * n.succ!, by {rw [h₂], refl, },
    have h₆ : n.succ.succ! = n.succ.succ * n.succ!, by {rw [h₃], refl, },
    have h₇ : n.succ.succ.succ^2 = n.succ.succ^2 + 2 * n.succ.succ, by {rw [h₁], refl
end
