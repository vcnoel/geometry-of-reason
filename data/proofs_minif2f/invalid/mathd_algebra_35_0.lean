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

  -- We know that q 2 = 6/2 = 3. We will substitute this into p.
  have h₂ : q 2 = 3,
  { exact (h₁ 2).symm, },

  -- Now, we will substitute 3 into p.
  have h₃ : p 3 = 2 - 3^2,
  { exact (h₀ 3).symm, },

  -- We simplify the expression.
  have h₄ : p 3 = -7,
  { simp only [h₃], },

  -- The goal is to show that p (q 2) = -7. Since we have shown that q 2 = 3 and p 3 = -7, we can conclude that p (q 2) = -7.
  exact h₄,

end
