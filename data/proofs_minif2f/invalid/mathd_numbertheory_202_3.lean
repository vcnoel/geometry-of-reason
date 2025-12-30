import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_202 :
  (19^19 + 99^99) % 10 = 8 :=
begin

  -- First, we use the property of modular arithmetic that (a + b) % n = ((a % n) + (b % n)) % n.
  have h1 := (19^19 % 10 + 99^99 % 10) % 10,
  -- Next, we use the property that a^b % n = ((a % n)^b) % n.
  have h2 := ((19 % 10)^19 % 10 + (99 % 10)^99 % 10) % 10,
  -- We know that 19 % 10 = 9 and 99 % 10 = 9.
  have h3 : 19 % 10 = 9,
  have h4 : 99 % 10 = 9,
  -- Now, we can substitute these values into the previous expression.
  have h5 := (9^19 % 10 + 9^99 % 10) % 10,
  -- Next, we use the property that a^b % n = ((a % n)^b) % n.
  have h6 := (9^19 % 10 + 9^99 % 10) % 10,
 
end
