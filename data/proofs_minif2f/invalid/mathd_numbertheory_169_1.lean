import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_169 :
  nat.gcd 20! 200000 = 40000 :=
begin

  -- We need to compute 20! and 200000
  let A := 20.factorial,
  let B := 200000,

  -- And compute their GCD using Euclid's algorithm
  let G := gcd A B,

  -- Then we can prove the statement using the definition of GCD
  exact G = 40000,

end
