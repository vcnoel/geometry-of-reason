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

  have h₁ : (x - y)^2 + (y - z)^2 + (z - x)^2 = 0,
  { rw h₀, },
  have h₂ : x - y = 0,
  { have h₂₁ : (x - y)^2 = 0,
    { rwa h₁, },
    have h₂₂ : x - y = 0,
    { rw int.sqrt_eq_zero_of_square_eq_zero h₂₁, },
    exact h₂₂, },
  have h₃ : y - z = 0,
  { have h₃₁ : (y - z)^2 = 0,
    { rwa h₁, },
    have h₃₂ : y - z = 0,
    { rw int.sqrt_eq_zero_of_square_eq_zero h₃₁, },
    exact h₃₂, },
  have h₄ : z - x = 0,
  { have h₄₁ : (z - x)^2 = 0,
    { rwa h₁, },
    have h₄₂ : z - x = 0,
    { rw int.sqrt_eq_zero_of_square_eq_zero h₄₁, },
    exact h�
end
