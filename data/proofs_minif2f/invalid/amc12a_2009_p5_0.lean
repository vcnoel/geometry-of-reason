import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2009_p5
  (x : ℝ)
  (h₀ : x^3 - (x + 1) * (x - 1) * x = 5) :
  x^3 = 125 :=
begin

  -- The equation is already in the desired form.
  have h₁ := h₀,
  have h₂ := h₁,

  -- Now, use the result from minif2f_import to get the solution.
  exact h₂

end
