import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_181
  (n : ℝ)
  (h₀ : n ≠ 3)
  (h₁ : (n + 5) / (n - 3) = 2) : n = 11 :=
begin

  -- n + 5 = 2 * (n - 3)
  have h₂ : n + 5 = 2 * n - 6,
  { rw [mul_two, add_assoc, add_neg_cancel_left],
    exact h₁ },
  -- n + 11 = 2n
  have h₃ : n + 11 = 2 * n,
  { rw [add_neg_cancel_left, add_assoc, add_neg_cancel_left],
    exact h₂ },
  -- n = 11
  exact h₃.subst 0,

end
