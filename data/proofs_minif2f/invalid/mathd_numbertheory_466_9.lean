import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_466 :
  (∑ k in (finset.range 11), k) % 9 = 1 :=
begin

  have h1 : (∑ k in (finset.range 11), k) = 55,
  { have h2 : (∑ k in (finset.range 11), k) = 11*10/2,
    { apply sum_range },
    rw [mul_comm, mul_two_div],
    exact h2 },
  have h3 : 55 % 9 = 1,
  { apply Nat.mod_eq_of_div_eq (55/9),
    { apply div_eq_of_mod_eq,
      exact h1 },
    { apply eq_of_sub_eq_zero,
      apply sub_eq_zero,
      have h4 : 55 - 55 = 0,
      { apply Nat.sub_self },
      exact h4 } },
  exact h3

end
