import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_136
  (n : ℕ)
  (h₀ : 123 * n + 17 = 39500) : n = 321 :=
begin

  -- First, we isolate n on one side of the equation
  rw h₀,
  -- Then, we solve for n
  rw [mul_one, add_zero],
  -- We see that n equals the result of the right-hand side of the equation.
  rw [add_comm, add_left_inj],
  -- The result of the right-hand side of the equation is 321.
  rw [sub_zero, sub_eq_add_neg, sub_add, neg_add_self],
  -- Therefore, n equals 321.
  exact eq.refl 321

end
