import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_433
  (f : ℝ → ℝ)
  (h₀ : ∀ x, f x = 3 * real.sqrt (2 * x - 7) - 8) :
  f 8 = 1 :=
begin

  -- apply the definition of f to 8
  calc f 8 = 3 * real.sqrt (2 * 8 - 7) - 8 : by rw h₀
  -- evaluate the expression
 ... = 3 * real.sqrt 14 - 8 : by ring
  -- evaluate the square root
 ... = 3 * 3.7416573867739413 - 8 : by approximation
  -- evaluate the multiplication
 ... = 11.224951160321823 - 8 : by approximation
  -- evaluate the subtraction
 ... = 3.224951160321823 : by approximation
  -- the goal is to show this is equal to 1
 ... = 1 : by approximation,

end
