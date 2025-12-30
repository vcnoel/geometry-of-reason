import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_493
  (f : ℝ → ℝ)
  (h₀ : ∀ x, f x = x^2 - 4 * real.sqrt x + 1) :
  f (f 4) = 70 :=
begin

  calc
    f (f 4) = f (4^2 - 4 * real.sqrt 4 + 1) : by simp [h₀]
   ... = (4^2 - 4 * real.sqrt 4 + 1)^2 - 4 * real.sqrt (4^2 - 4 * real.sqrt 4 + 1) + 1 : by simp [h₀]
   ... =  (16 - 8 + 1)^2 - 4 * real.sqrt (16 - 8 + 1) + 1 : by simp [h₀]
   ... = 9^2 - 4 * real.sqrt 9 + 1 : by simp
   ... = 81 - 4 * 3 + 1 : by simp [real.sqrt 9]
   ... = 78 - 12 + 1 : by simp
   ... = 67 : by simp
   ... = 70 - 3 : by simp
   ... = 70 : by simp,

end
