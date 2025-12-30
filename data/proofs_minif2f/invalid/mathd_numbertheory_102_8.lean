import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_102 :
  (2^8) % 5 = 1 :=
begin

  have h1: 2^8 = 256,
  calc 2^8 = 2^8,
  exact h1,
  have h2: 256 % 5 = 1,
  calc 256 % 5 = 256 - 255,
  ring,
  exact h2,
  have h3: 256 - 255 = 1,
  calc 256 - 255 = 1,
  ring,
  exact h3,
  have h4: 1 = 1,
  calc 1 = 1,
  exact h4,
  exact h4

end
