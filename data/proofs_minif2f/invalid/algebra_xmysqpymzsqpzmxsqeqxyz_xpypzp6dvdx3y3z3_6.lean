import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_xmysqpymzsqpzmxsqeqxyz_xpypzp6dvdx3y3z3
  (x y z : ℤ)
  (h₀ : (x - y)^2 + (y - z)^2 + (z - x)^2 = x * y * z) :
  (x + y + z + 6) ∣ (x^3 + y^3 + z^3) :=
begin

  have h₁ : (x - y)^2 + (y - z)^2 + (z - x)^2 = x * y * z,
  from h₀,
  have h₂ : x * y * z = (x + y + z + 6)^3,
  from (by rw h₁; ring),
  have h₃ : (x + y + z + 6) ∣ x^3 + y^3 + z^3,
  from (by rw h₂; exact dvd_of_dvd_power (dvd_add_right (dvd_add_right (dvd_add_right (dvd_add_right (dvd_add_right (dvd_add_right (dvd_add_right (dvd_zero _)) (dvd_add_right (dvd_add_right (dvd_add_right (dvd_add_right (dvd_add_right (dvd_add_right (dvd_add_right (dvd_add_right (dvd_add_right (dvd_add_right (dvd_add_right (dvd_add_right (dvd_add_right (dvd_add_right (dvd_add_right (dvd_add_right (dvd_add_right (dvd_add_right (dvd_add_right (dvd_add_right (d
end
