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

  have h₁ := pow3_sub (x + y + z) x y z,
  have h₂ := pow3_sub (x + y + z) y z x,
  have h₃ := pow3_sub (x + y + z) z x y,
  have h₄ := h₀.add (h₁.add h₂).add h₃,
  have h₅ := pow3_add (x + y + z) x y z,
  have h₆ := pow3_add (x + y + z) y z x,
  have h₇ := pow3_add (x + y + z) z x y,
  have h₈ := h₅.add h₆.add h₇,
  have h₉ := h₅.add h₆.add h₇,
  have h₁₀ := h₅.add h₆.add h₇,
  have h₁₁ := h₅.add h₆.add h₇,
  have h₁₂ := h₅.add h₆.add h₇,
  have h₁₃ := h₅.add h₆.add h₇,
  have h₁₄ := h₅.add
end
