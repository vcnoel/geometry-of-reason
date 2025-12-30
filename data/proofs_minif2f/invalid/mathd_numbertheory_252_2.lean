import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_252 :
  7! % 23 = 3 :=
begin

  have A := nat.factorial 7,
  have B := A % 23,
  have C := nat.factorial 3,
  have D := C % 23,
  have E := (6 * 5 * 4 * 3 * 2 * 1) % 23,
  have F := (6 * 5 * 4 * 3 * 2 * 1) % 23 = 3 * (2 * 1) * 4 * 5 * 6 % 23,
  have G := 2 * 1 = 2,
  have H := 2 % 23 = 2,
  have I := 4 * 5 * 6 % 23 = (4 * 5) * 6 % 23,
  have J := (4 * 5) * 6 % 23 = 4 * (5 * 6) % 23,
  have K := 5 * 6 % 23 = 5 * 6 % 23,
  have L := 4 * (5 * 6) % 23 = 4 * 30 % 23,
  have M := 4 * 30 % 
end
