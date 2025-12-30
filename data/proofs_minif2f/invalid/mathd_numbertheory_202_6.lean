import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_202 :
  (19^19 + 99^99) % 10 = 8 :=
begin

  have h1 := (19^19 + 99^99) % 10 = ((19 % 10)^19 + (99 % 10)^99) % 10,
  have h2 := (19 % 10)^19 % 10 = 9^19 % 10,
  have h3 := (99 % 10)^99 % 10 = 9^99 % 10,
  have h4 := 9^19 % 10 = 9 % 10,
  have h5 := 9^99 % 10 = 9 % 10,
  have h6 := 9 % 10 = 9,
  have h7 := 9^19 % 10 = 9 % 10,
  have h8 := 9 % 10 = 9,
  have h9 := 9^99 % 10 = 9 % 10,
  have h10 := 9 % 10 = 9,
  have h11 := 9^19 % 10 = 9 % 10,
  have h12 := 9 % 10 = 9,
  have h13 := 9^99 % 10 = 9 % 10
end
