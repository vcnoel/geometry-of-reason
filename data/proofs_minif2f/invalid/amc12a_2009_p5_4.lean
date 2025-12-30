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

  apply pow_eq_of_eq,
  rw [pow_three, mul_assoc, mul_comm, mul_assoc, mul_comm, mul_assoc, mul_comm, mul_assoc, mul_comm],
  exact h₀,

end
