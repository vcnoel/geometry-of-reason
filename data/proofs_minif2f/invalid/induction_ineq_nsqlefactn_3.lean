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
  { rw nat.factorial_zero,
    exact le_rfl },
  { have h₁ := ih,
    have h₂ := le_trans h₀ (le_add_one n),
    have h₃ := mul_le_mul h₂ h₂,
    have h₄ := mul_le_mul h₃ h₁,
    have h₅ := le_add_mul h₂ h₁,
    exact le_trans h₄ h₅ },

end
