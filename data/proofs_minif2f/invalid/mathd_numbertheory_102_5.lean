import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_102 :
  (2^8) % 5 = 1 :=
begin

  -- 2^8 = (2^4)^2 = 16^2 = 256
  have h1: 2^8 = 256,
    calc
      2^8 = (2^4)^2,
      _ = (16)^2,
      _ = 256,
  -- 256 % 5 = 1
  have h2: 256 % 5 = 1,
    calc
      256 % 5 = 256 - (5 * (256/5)),
      _ = 256 - (5 * 51),
      _ = 256 - 255,
      _ = 1,
  -- 2^8 % 5 = 1
  show 2^8 % 5 = 1,
    from h2,

end
