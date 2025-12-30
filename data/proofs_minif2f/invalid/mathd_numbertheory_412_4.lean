import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_412
  (x y : ℕ)
  (h₀ : x % 19 = 4)
  (h₁ : y % 19 = 7) :
  ((x + 1)^2 * (y + 5)^3) % 19 = 13 :=
begin

  calc ((x + 1)^2 * (y + 5)^3) % 19
      = ((x + 1)^2) % 19 * ((y + 5)^3) % 19 : by { simp only [mul_mod] }
 ... = (x + 1)^2 % 19 * (y + 5)^3 % 19 : by { simp only [pow_mod] }
 ... = (x + 1)^2 % 19 * ((y + 5) % 19)^3 : by { simp only [pow_mod] }
 ... = (x + 1)^2 % 19 * ((y % 19 + 5) % 19)^3 : by { simp only [add_mod] }
 ... = (x + 1)^2 % 19 * ((y % 19 + 5) % 19)^3 : by { simp only [add_mod] }
 ... = (x + 1)^2 % 19 * ((y % 19 + 5) % 19)^3 : by { simp only [add_mod] }
 ... = (x + 1)^2 % 19 * (7
end
