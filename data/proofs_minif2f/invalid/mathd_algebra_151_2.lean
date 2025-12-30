import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_151 :
  int.ceil (real.sqrt 27) - int.floor (real.sqrt 26) = 1 :=
begin

  have h1 := int.ceil_le (real.sqrt 27) (real.sqrt 27),
  have h2 := int.ceil_le (real.sqrt 27) (real.sqrt 28),
  have h3 := int.ceil_le (real.sqrt 27) (real.sqrt 29),
  have h4 := int.ceil_le (real.sqrt 27) (real.sqrt 30),
  have h5 := int.ceil_le (real.sqrt 27) (real.sqrt 31),
  have h6 := int.ceil_le (real.sqrt 27) (real.sqrt 32),
  have h7 := int.ceil_le (real.sqrt 27) (real.sqrt 33),
  have h8 := int.ceil_le (real.sqrt 27) (real.sqrt 34),
  have h9 := int.ceil_le (real.sqrt 27) (real.sqrt 35),
  have h10 := int.ceil_le (real.sqrt 27) (real.sqrt 36),
  have h11 := int.ceil_le (real.sqrt 27) (real.sqrt 37),
  have h12 := int.ceil_le (real.sqrt 27) (real.sqrt 38),
  have h13 := int.ceil_le (real.sqrt 27) (real
end
