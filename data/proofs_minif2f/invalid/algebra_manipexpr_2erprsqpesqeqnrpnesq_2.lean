import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_manipexpr_2erprsqpesqeqnrpnesq
  (e r : ℂ) :
  2 * (e * r) + (e^2 + r^2) = (-r + (-e))^2 :=
begin

  calc 2 * (e * r) + (e^2 + r^2)
      = 2 * (e * r) + e^2 + r^2
        := by { rw ← mul_add (2 * e * r) e^2 }
 ... = (2 * e * r + e^2) + r^2
        := by { rw add_assoc }
 ... = (e + r)^2 + r^2 - 2 * e * r
        := by { rw ← add_mul (e + r) (e + r) }
 ... = (e + r)^2 + r^2 - 2 * e * r - 2 * e * r
        := by { rw ← add_mul (2 * e * r) (2 * e * r) }
 ... = (e + r)^2 - 2 * e * r + r^2 - 2 * e * r
        := by { rw add_comm }
 ... = ((e + r) - e)^2
        := by { rw ← sub_sub e r }
 ... = (r - e)^2
        := by { rw sub_neg_eq_add }

end
