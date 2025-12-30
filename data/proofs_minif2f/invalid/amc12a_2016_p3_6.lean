import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2016_p3
  (f : ℝ → ℝ → ℝ)
  (h₀ : ∀ x, ∀ y ≠ 0, f x y = x - y * int.floor (x / y)) :
  f (3 / 8) (-(2 / 5)) = -(1 / 40) :=
begin

  calc
    f (3 / 8) (-(2 / 5)) = (3 / 8) - (-(2 / 5)) * int.floor ((3 / 8) / (-(2 / 5))) : by
      { apply h₀; assumption }
   ... = (3 / 8) - (-(2 / 5)) * int.floor ((3 / 8) / (-(2 / 5))) : by
      { apply h₀; assumption }
   ... = (3 / 8) - (-(2 / 5)) * int.floor ((-3) / (8 / 5)) : by
      { ring_nf }
   ... = (3 / 8) - (-(2 / 5)) * int.floor ((-3) / (8 / 5)) : by
      { ring_nf }
   ... = (3 / 8) - (-(2 / 5)) * int.floor ((-3) / (8 / 5)) : by
      { ring_nf }
   ... = (3 / 8) - (-(2 / 5)) * int.floor ((-3) / (8 / 5)) : by
end
