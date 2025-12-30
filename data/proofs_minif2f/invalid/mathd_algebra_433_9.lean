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

  calc
    f 8 = 3 * real.sqrt (2 * 8 - 7) - 8 : by rw h₀
   ... = 3 * real.sqrt (9) - 8 : by ring
   ... = 3 * 3 - 8 : by real.sqrt_of_square
   ... = 1 : by ring,

end
