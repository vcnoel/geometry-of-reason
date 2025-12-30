import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_269 :
  (2005^2 + 2005^0 + 2005^0 + 2005^5) % 100 = 52 :=
begin

  have h1 : 2005^2 % 100 = 25,
  calc 2005^2 % 100 = (2005^2) % 100,
  ring,
  have h2 : 2005^0 % 100 = 1,
  calc 2005^0 % 100 = (2005^0) % 100,
  ring,
  have h3 : 2005^5 % 100 = 25,
  calc 2005^5 % 100 = (2005^5) % 100,
  ring,
  calc (2005^2 + 2005^0 + 2005^0 + 2005^5) % 100 = ((2005^2) % 100 + (2005^0) % 100 + (2005^0) % 100 + (2005^5) % 100) % 100,
  ring,
  rw [h1, h2, h3],
  calc _ = (25 + 1 + 1 + 25) % 100,
  ring,
  calc _ = 52 % 100,
  ring,
  exact rfl,

end
