import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_81 :
  71 % 3 = 2 :=
begin

  -- 71 divided by 3 leaves a remainder of 2
  have H := 71 % 3,
  have I := 2,
  have J := H = I,
  show H = I,
  by refl,

end
