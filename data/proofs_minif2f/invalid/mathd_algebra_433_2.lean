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
   ... = 3 * real.sqrt 14 - 8 : by ring
   ... = 3 * 3.7416573867739413 - 8 : by real.sqrt 14
   ... = 11.224991160621283 - 8 : by ring
   ... = 3.224991160621283 : by ring
   ... = 3.224991160621283 : by real.div 11.224991160621283 8
   ... = 1 : by real.div 3.224991160621283 1


end
