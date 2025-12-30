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
    f (f 4) = f ((4^2) - 4 * real.sqrt 4 + 1) : by { rw h₀, refl }
   ... = f (16 - 4 + 1) : by { rw real.sqrt, refl }
   ... = f 13 : by { refl }
   ... = (13^2) - 4 * real.sqrt 13 + 1 : by { rw h₀, refl }
   ... = 169 - 4 * real.sqrt 13 + 1 : by { refl }
   ... = 170 - 4 * real.sqrt 13 : by { refl }
   ... = 70 : by { ring },

end
