import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_188 :
  nat.gcd 180 168 = 12 :=
begin

  let a := 180;
  let b := 168;
  have h1 : gcd a b = gcd (b % a) (a - b % a) := by { rw gcd_eq_gcd_sub };
  have h2 : gcd (b % a) (a - b % a) = gcd (b % a) a := by { rw gcd_eq_gcd_sub };
  have h3 : gcd (b % a) a = gcd (a - a % b) a := by { rw [sub_eq_mod, gcd_eq_gcd_sub] };
  have h4 : gcd (a - a % b) a = gcd (a - a % b) (a - (a - a % b)) := by { rw gcd_eq_gcd_sub };
  have h5 : gcd (a - a % b) (a - (a - a % b)) = gcd (a - a % b) (a % b) := by { rw gcd_eq_gcd_sub };
  have h6 : gcd (a - a % b) (a % b) = gcd (a % b) (a % b) := by { rw gcd_eq_gcd_sub };
  have h7 : gcd
end
