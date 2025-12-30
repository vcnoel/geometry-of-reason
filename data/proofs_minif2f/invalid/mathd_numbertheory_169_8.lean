import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_169 :
  nat.gcd 20! 200000 = 40000 :=
begin

  have h1 := nat.factorial_le (20 * 20),
  have h2 := nat.factorial_le (20 * 19),
  have h3 := nat.factorial_le (20 * 18),
  have h4 := nat.factorial_le (20 * 17),
  have h5 := nat.factorial_le (20 * 16),
  have h6 := nat.factorial_le (20 * 15),
  have h7 := nat.factorial_le (20 * 14),
  have h8 := nat.factorial_le (20 * 13),
  have h9 := nat.factorial_le (20 * 12),
  have h10 := nat.factorial_le (20 * 11),
  have h11 := nat.factorial_le (20 * 10),
  have h12 := nat.factorial_le (20 * 9),
  have h13 := nat.factorial_le (20 * 8),
  have h14 := nat.factorial_le (20 * 7),
  have h15 := nat.factorial_le (20 * 6),
  have h16 := nat.factorial_le (20 * 5),
  have h17 := nat.factorial_le (20 * 4),
 
end
