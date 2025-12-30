import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_manipexpr_2erprsqpesqeqnrpnesq
  (e r : ℂ) :
  2 * (e * r) + (e^2 + r^2) = (-r + (-e))^2 :=
begin

  calc
    2 * (e * r) + (e^2 + r^2)
      = 2 * (e * r) + (e^2 + r^2 - r^2)
        := by ring_nf
   ... = 2 * (e * r) + e^2
      := by ring_nf
   ... = 2 * (e * r) + e * e
      := by ring_nf
   ... = 2 * (e * r) + e * e
      := by ring_nf
   ... = e * (2 * r + e)
      := by ring_nf
   ... = e * (e + 2 * r)
      := by ring_nf
   ... = e * e + e * (2 * r)
      := by ring_nf
   ... = (e * e) + (e * 2 * r)
      := by ring_nf
   ... = e * e + 2 * (e * r)
      := by ring_nf
   ... = (e + 0) * (e + 0)
      := by ring_nf
   ... = ((-r) + (-e)) * ((-r
end
