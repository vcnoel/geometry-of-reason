import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_169 :
  nat.gcd 20! 200000 = 40000 :=
begin

  -- Factor 20! as a product of prime factors
  have f_20 := nat.factor 20,
  let p := λ n, (f_20 n).fst,
  let e := λ n, (f_20 n).snd,

  -- Calculate the power of each prime in 20!
  have pow_2 := 19 + 1,
  have pow_5 := 4 + 1,
  have pow_7 := 2 + 1,
  have pow_11 := 1 + 1,

  -- Calculate the power of each prime in 200000
  have pow_2_200000 := 16 + 4,
  have pow_5_200000 := 5 + 3,
  have pow_7_200000 := 3 + 2,
  have pow_11_200000 := 2 + 1,

  -- Calculate the GCD of 20! and 200000
  have gcd_20_200000 := nat.gcd (20!) (200000),

  -- Calculate the GCD of 20! and 200000
  have gcd_20_200000_2 := gcd_20_200000,

  --
end
