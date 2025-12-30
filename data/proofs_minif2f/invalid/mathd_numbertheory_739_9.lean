import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_739 :
  9! % 10 = 0 :=
begin

  have h1 : 9! % 10 = ((9! % 10) % 2) % 5 := by { rw [mod_mod, mod_mod], },
  have h2 : (9! % 10) % 2 = 0 := by { rw [mod_2], },
  have h3 : (9! % 10) % 5 = 0 := by { rw [mod_5], },
  exact or.inl (or.inr h3),

end
