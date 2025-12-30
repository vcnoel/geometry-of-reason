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
  { -- base case: n = 0
    have h₁ := 10 ^ 0 - 1,
    have h₂ := 9 * 1,
    have h₃ := h₁ = h₂,
    exact absurd h₃ (not_congr h₁ h₂),
  },
  { -- induction step: n.succ
    have h₁ := 10 ^ n.succ - 1,
    have h₂ := 10 * (10 ^ n - 1),
    have h₃ := h₁ = h₂,
    exact absurd h₃ (not_congr h₁ h₂),
  },

end
