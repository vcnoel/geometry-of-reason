import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_214
  (a : ℝ)
  (f : ℝ → ℝ)
  (h₀ : ∀ x, f x = a * (x - 2)^2 + 3)
  (h₁ : f 4 = 4) :
  f 6 = 7 :=
begin

  calc
    f 6 = a * (6 - 2)^2 + 3 : by rw h₀
   ... = 16 * a + 3 : by ring
   ... = 7 : by rw h₁; ring

end
