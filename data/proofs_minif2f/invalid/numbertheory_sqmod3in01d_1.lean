import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem numbertheory_sqmod3in01d
  (a : ℤ) :
  (a^2) % 3 = 0 ∨ (a^2) % 3 = 1 :=
begin

  cases a % 3 with ha ha,
  { have ha2 : (a^2) % 3 = 0,
    by { rw [pow_two a, sqmod_sq, ha], },
    exact ha2, },
  { have ha2 : (a^2) % 3 = 1,
    by { rw [pow_two a, sqmod_sq, ha], },
    exact ha2, },

end
