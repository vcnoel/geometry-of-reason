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

  have h₁ : (x + y + z + 6)^2 ∣ (x^3 + y^3 + z^3)^2 := by
    { calc
        (x + y + z + 6)^2 ∣ (x^3 + y^3 + z^3)^2
          : (x + y + z + 6)^2 ∣ ((x^2 + y^2 + z^2) + (x * y + y * z + z * x) + 12)^2
          : by
            { have h₂ : (x^2 + y^2 + z^2) ∣ (x^3 + y^3 + z^3)^2 := by
                { calc
                    (x^2 + y^2 + z^2) ∣ (x^3 + y^3 + z^3)^2
                      : (x^2 + y^2 + z^2) ∣ (x^6 + y^6 + z^6 + 2 * x^3 * y^3 + 2 * y^3 * z^3 + 2 * z^3 * x^3)

end
