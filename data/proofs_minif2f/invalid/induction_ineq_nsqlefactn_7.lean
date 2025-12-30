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
  { by_cases h₁ : n = 0,
    { exfalso,
      exact nat.no_zero_divisor h₁, },
    { by_cases h₂ : n = 1,
      { exact le_of_eq (nat.factorial_eq_self 1), },
      { by_cases h₃ : n = 2,
        { have h₄ : 4 ≤ 2 := h₀,
          have h₅ : 2! = 2 := nat.factorial_eq_self 2,
          have h₆ : 2^2 = 4 := pow_two 2,
          have h₇ : 2 ≤ 2! := le_of_eq h₅,
          have h₈ : 4 ≤ 2! := le_trans h₄ h₇,
          have h₉ : 2! ≤ 2! := le_refl (2!),
          exact le_trans h₈ h₉, },
        { have h₄ : 4 ≤ n := h₀,
          have h₅ : n.succ^2 = (n.succ)*(n.succ) := pow_succ
end
