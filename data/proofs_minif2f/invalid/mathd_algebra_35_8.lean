import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_35
  (p q : ℝ → ℝ)
  (h₀ : ∀ x, p x = 2 - x^2)
  (h₁ : ∀ x ≠ 0, q x = 6 / x) :
  p (q 2) = -7 :=
begin

  -- To show that p(q(2)) = -7, we must first compute q(2)
  have q_2 : q 2 = 6 / 2 := by { apply h₁; linarith },
  -- Then we plug the result into p
  have p_q_2 : p (q 2) = p (6 / 2),
  by { apply h₀; assumption },
  -- Using the definition of p, we can simplify the result
  have p_q_2' : p (6 / 2) = 2 - (6/2)^2,
  by { apply h₀; assumption },
  -- Now we compute the square of 6/2
  have q_2_sqr : (6/2)^2 = 36/4 := by { ring },
  -- And finally we can simplify the expression
  have p_q_2'': p (6 / 2) = 2 - 36/4,
  by { apply h₀; assumption },
  -- Finally, we can use the definition of -7
  have p_q_2''' : p (6 / 2) = -7,
  by { apply h₀; assumption
end
