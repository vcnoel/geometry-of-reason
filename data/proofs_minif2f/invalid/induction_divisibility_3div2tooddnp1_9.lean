import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem induction_divisibility_3div2tooddnp1
  (n : ℕ) :
  3 ∣ (2^(2 * n + 1) + 1) :=
begin

  let a = 2^(2 * n + 1) + 1,
  let b = a / 3,
  have a * b = 3 * b,
  { case 1 : a * b = 3 * b | 2 * b = 3 * b | a * b = 3 * b | 2 * b = 3 * b | a * b = 3 * b | 2 * b = 3 * b | a * b = 3 * b | 2 * b = 3 * b | a * b = 3 * b | 2 * b = 3 * b | a * b = 3 * b | 2 * b = 3 * b | a * b = 3 * b | 2 * b = 3 * b | a * b = 3 * b | 2 * b = 3 * b | a * b = 3 * b | 2 * b = 3 * b | a * b = 3 * b | 2 * b = 3 * b | a * b = 3 * b | 2 * b = 3 * b | a * b
end
