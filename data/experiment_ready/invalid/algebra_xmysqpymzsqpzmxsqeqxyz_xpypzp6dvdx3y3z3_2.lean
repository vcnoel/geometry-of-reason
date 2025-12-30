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

  have h₁ := congr_arg (λ x : ℤ, x^3) (congr_arg (λ x : ℤ, x^2) (h₀)),
  have h₂ := (h₁ rfl).symm,
  have h₃ := congr_arg (λ x : ℤ, x^3) (congr_arg (λ x : ℤ, x^2) (h₂)),
  have h₄ := (h₃ rfl).symm,
  have h₅ := congr_arg (λ x : ℤ, x^3) (congr_arg (λ x : ℤ, x^2) (h₄)),
  have h₆ := (h₅ rfl).symm,
  have h₇ := congr_arg (λ x : ℤ, x^3) (congr_arg (λ x : ℤ, x^2) (h₆)),
  have h₈ := (h₇ rfl).symm,
  have h₉ := congr_arg (λ x : ℤ, x^3) (congr_arg (λ x : ℤ, x^2) (h₈)),
  have h₁₀ := (h
end
