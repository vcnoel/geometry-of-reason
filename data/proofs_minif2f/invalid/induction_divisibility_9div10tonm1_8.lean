import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem induction_divisibility_9div10tonm1
  (n : ℕ)
  (h₀ : 0 < n) :
  9 ∣ (10^n - 1) :=
begin

  induction n with n ih,
  { simp [h₀] },
  { simp [h₀, n.succ_ne_zero, (10 * n).succ_ne_zero],
    have h₁ : 10 * (10^n - 1) = 10^(n.succ) - 1,
    { rw [n.succ_eq_succ, (10 * n).succ_eq_succ] },
    have h₂ : 9 * (10^n - 1) = (10 * 10^n) - 10 - (9 * (10^n - 1)),
    { rw [h₁, (10 * n).succ_eq_succ, 10 * n] },
    have h₃ : 9 * (10^n - 1) = 10^(n.succ) - 10 - (9 * (10^n - 1)),
    { rw [h₂, (10 * n).succ_eq_succ, 10 * n] },
    have h₄ : 10 * (10^n - 1) - 9 * (10^n - 1) = 10^(n.succ) - 10,
    { rw [h₁, h₃] },
    have h�
end
