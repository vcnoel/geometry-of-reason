import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_84 :
  int.floor ((9:ℝ) / 160 * 100) = 5 :=
begin

  -- We first need to calculate the value of (9:ℝ) / 160 * 100
  let a := (9:ℝ) / 160 * 100,
  -- Then, we need to find the greatest integer less than or equal to a
  let b := int.floor a,
  -- Now, we can prove that b is equal to 5
  calc
    b = int.floor ((9:ℝ) / 160 * 100) : by refl
   ... = 5 : 
end
