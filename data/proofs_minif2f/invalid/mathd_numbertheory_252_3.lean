import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_252 :
  7! % 23 = 3 :=
begin

  have h1 : 7! = 7 * 6! := by { apply mul_comm, apply factorial_mul, },
  have h2 : 6! % 23 = 8 := by { apply mathd_numbertheory_212 },
  have h3 : 7 * 8 % 23 = 3 := by { apply mod_mul, apply pow_1_7, apply pow_1_8 },
  exact h3,

end
