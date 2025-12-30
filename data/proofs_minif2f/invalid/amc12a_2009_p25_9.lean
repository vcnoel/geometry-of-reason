import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2009_p25
  (a : ℕ → ℝ)
  (h₀ : a 1 = 1)
  (h₁ : a 2 = 1 / real.sqrt 3)
  (h₂ : ∀ n, 1 ≤ n → a (n + 2) = (a n + a (n + 1)) / (1 - a n * a (n + 1))) :
  abs (a 2009) = 0 :=
begin

  -- We prove the statement by induction on n.
  induction 2009 with n IH,
  { simp },
  { have h₃ : a 2 = 1 / real.sqrt 3,
    { exact h₁ },
    have h₄ : ∀ k, 2 ≤ k → a (k + 2) = (a k + a (k + 1)) / (1 - a k * a (k + 1)),
    { intros k hk,
      exact h₂ },
    have h₅ : ∀ k, 1 ≤ k → a (k + 1) = a k * a (k + 1) + a (k + 1),
    { intros k hk,
      rw [h₄ k (le_add_one hk), mul_add, add_comm, add_assoc, add_comm (a k * a (k + 1))],
      exact (add_right_cancel (a k * a (k + 1) + a (k + 1))) },
    have h₆ : ∀ k, 1 ≤ k → a (k + 1) * a (k + 2) = a (k + 1) * a (k +
end
