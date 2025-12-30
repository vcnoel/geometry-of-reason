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

  have h₁ := algebra.map_nat_cast ((x - y)^2 + (y - z)^2 + (z - x)^2),
  have h₂ := algebra.map_nat_cast (x * y * z),
  have h₃ := congr_arg2 (λ a b, a + b) h₁ h₂,
  have h₄ := congr_arg2 (λ a b, a - b) h₁ h₂,
  have h₅ := congr_arg2 (λ a b, a * b) h₁ h₂,
  have h₆ := congr_arg2 (λ a b, a ^ 3 + b ^ 3) h₁ h₂,
  have h₇ := congr_arg2 (λ a b, a ^ 3 - b ^ 3) h₁ h₂,
  have h₈ := congr_arg2 (λ a b, a ^ 3 - b ^ 3) h₃ h₄,
  have h₉ := congr_arg2 (λ a b, a * b) h₃ h₄,
  have h₁₀ := congr_arg2 (λ a b, a ^ 3 + b ^ 3) h₃ h₄,

end
