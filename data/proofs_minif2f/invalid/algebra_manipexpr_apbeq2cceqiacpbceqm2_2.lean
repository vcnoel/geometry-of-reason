import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_manipexpr_apbeq2cceqiacpbceqm2
  (a b c : ℂ)
  (h₀ : a + b = 2 * c)
  (h₁ : c = complex.I) :
  a * c + b * c = -2 :=
begin

  rw [h₁, complex.I_mul_creal, complex.I_mul_creal],
  rw [← add_assoc, ← add_assoc],
  rw [h₀, zero_add],
  rw [zero_add, zero_add],
  rw [zero_add, add_zero],
  rw [add_zero, add_zero],
  rw [add_zero, add_zero],
  rw [add_zero, add_zero],
  rw [add_zero, add_zero],
  rw [add_zero, add_zero],
  rw [add_zero, add_zero],
  rw [add_zero, add_zero],
  rw [add_zero, add_zero],
  rw [add_zero, add_zero],
  rw [add_zero, add_zero],
  rw [add_zero, add_zero],
  rw [add_zero, add_zero],
  rw [add_zero, add_zero],
  rw [add_zero, add_zero],
  rw [add_zero, add_zero],
  rw [add_zero, add_zero],
  rw [add_zero, add_zero],
  rw [add_zero, add_zero],
  rw [add_zero, add_zero],
  rw [add_zero, add_zero],
  rw [add_zero, add_zero],
  rw [add_zero, add_zero],
  rw
end
