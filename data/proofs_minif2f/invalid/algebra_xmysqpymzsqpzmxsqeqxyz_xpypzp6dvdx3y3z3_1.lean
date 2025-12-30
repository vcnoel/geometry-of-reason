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

  have h₁ : (x + y + z) = (x - y)^2 + (y - z)^2 + (z - x)^2,
  { rw [h₀] },
  have h₂ : (x - y)^2 + (y - z)^2 + (z - x)^2 = (x^3 + y^3 + z^3) / ((x + y + z) * (x^2 + y^2 + z^2)),
  { ring },
  have h₃ : (x^2 + y^2 + z^2) = (x + y + z) * (x^2 + y^2 + z^2) - x^3 - y^3 - z^3,
  { ring },
  have h₄ : ((x^3 + y^3 + z^3) / ((x + y + z) * (x^2 + y^2 + z^2))) = (x + y + z) * (x^2 + y^2 + z^2) - x^3 - y^3 - z^3,
  { rw [h₂, h₃] },
  have h₅
end
