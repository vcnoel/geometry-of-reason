import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem induction_divisibility_3div2tooddnp1
  (n : ℕ) :
  3 ∣ (2^(2 * n + 1) + 1) :=
begin

  let a = 2^(2 * n + 1) + 1, b = 3, c = 2,
  let x = a / b, y = a / c,
  let z = gcd x y,
  let w = a / gcd x,
  let u = a / gcd y,
  let v = a / gcd z.
  show z = 1.
  show u = 1.
  show w = 1.
  show v = 1.
  show w * u = 1.
  
end
