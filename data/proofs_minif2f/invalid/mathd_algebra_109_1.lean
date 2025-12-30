import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_109
  (a b : ℝ)
  (h₀ : 3 * a + 2 * b = 12)
  (h₁ : a = 4) :
  b = 0 :=
begin

  -- We will use the given equation 3 * a + 2 * b = 12 and substitute a = 4.
  -- Then we will use the result to find b.
  have h₂ := h₀.subst h₁,

  -- Now we can solve the equation 6 + 2 * b = 12.
  have h₃ := h₂.subtr 6,

  -- Then we have 2 * b = 6.
  have h₄ := h₃.div 2,

  -- Finally, we have b = 3.
  have h₅ := h₄.divi 2,

  -- Now we can conclude that b = 0.
  have h₆ := h₅.eq_zero,

  exact h₆,

end
