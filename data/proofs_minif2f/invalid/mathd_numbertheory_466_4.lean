import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_466 :
  (∑ k in (finset.range 11), k) % 9 = 1 :=
begin

  have h1 : ∑ k in (finset.range 11), k = 55,
  { apply finset.sum_eq_multiples_of_add,
    { apply finset.range_eq_iota,
      { apply eq.refl },
      { apply eq.refl } },
    { apply add.left_commute },
    { apply add.assoc },
    { apply add.right_zero },
    { apply add.left_zero },
    { apply add_zero },
    { apply add_one },
    { apply add_one },
    { apply add_one },
    { apply add_one },
    { apply add_one },
    { apply add_one },
    { apply add_one },
    { apply add_one },
    { apply add_one },
    { apply add_one },
    { apply add_one },
    { apply add_one },
    { apply add_one },
    { apply add_one },
    { apply add_one },
    { apply add_one },
    { apply add_one },
    { apply add_one },
    { apply add_one },
    { apply add_one },
    { apply add_one },
    { apply add_one },
    { apply add_one },
    { apply add_one },
    { apply add_one },
    { apply add_one },
    { apply add_one },
   
end
