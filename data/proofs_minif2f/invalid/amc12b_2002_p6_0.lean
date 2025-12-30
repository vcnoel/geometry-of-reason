import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12b_2002_p6
  (a b : ℝ)
  (h₀ : a ≠ 0 ∧ b ≠ 0)
  (h₁ : ∀ x, x^2 + a * x + b = (x - a) * (x - b)) :
  a = 1 ∧ b = -2 :=
begin

  -- Let's use the given equation to factorize x^2 + a * x + b
  have h₂ : ∀ x, x^2 + a * x + b = (x - a) * (x - b),
    from h₁,

  -- Now we can use the factored form of the equation to get a and b
  have h₃ : a * b = b,
    by { rw h₂ at h₀, exact (and_iff_left h₀.2).2 (mul_eq_mul_right h₀.1) },

  -- Now we can use the fact that a and b are non-zero to get a = 1 and b = -2
  have h₄ : a = 1 ∧ b = -2,
    by { have h₅ : a ≠ 0 ∧ b ≠ 0, from h₀, rw h₃ at h₅, exact (mul_eq_one_iff h₅.1 h₅.2).2 (neg_eq_one_iff.2 h₅.2) },

  -- Finally, we can conclude that a = 1 and b = -2
  exact h₄

end
