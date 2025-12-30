import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem numbertheory_sqmod3in01d
  (a : ℤ) :
  (a^2) % 3 = 0 ∨ (a^2) % 3 = 1 :=
begin

  cases a with a_pos a_neg,
  { refine or.inl _,
    exact (a_pos^2)%3 = 0 },
  { refine or.inr _,
    exact (a_neg^2)%3 = 1 }

end
