import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_81 :
  71 % 3 = 2 :=
begin

  have h1 : 71 = 2 + 69,
    by { calc 71 = 2 + 69 : rfl },
  have h2 : 69 % 3 = 0,
    by { calc 69 % 3 = 0 : mod_zero _ _ },
  have h3 : 71 % 3 = (2 + 69) % 3,
    by { calc 71 % 3 = (2 + 69) % 3 : h1 },
  have h4 : (2 + 69) % 3 = 2 + (69 % 3),
    by { calc (2 + 69) % 3 = 2 + (69 % 3) : add_mod _ _ },
  have h5 : (2 + (69 % 3)) = 2 + 0,
    by { calc (2 + (69 % 3)) = 2 + 0 : h2 },
  have h6 : 2 + 0 = 2,
    by { calc 2 + 0 = 2 : add_zero _ },
  have h7 : 2 = 71 % 3,
    by { calc 2 = 71
end
