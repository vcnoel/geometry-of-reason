import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_412
  (x y : ℕ)
  (h₀ : x % 19 = 4)
  (h₁ : y % 19 = 7) :
  ((x + 1)^2 * (y + 5)^3) % 19 = 13 :=
begin

  -- First, we calculate (x + 1) % 19 and (y + 5) % 19.
  let x₁ : ℕ := (x + 1) % 19,
  let y₁ : ℕ := (y + 5) % 19,

  -- Then, we simplify (x + 1)^2 % 19 and (y + 5)^3 % 19.
  have h₂ : (x + 1)^2 % 19 = (x + 1)^2 % 19,
  { rw [← int.nat_cast (x + 1)^2, ← int.nat_cast x₁^2, mod_self _] },
  have h₃ : (y + 5)^3 % 19 = (y + 5)^3 % 19,
  { rw [← int.nat_cast (y + 5)^3, ← int.nat_cast y₁^3, mod_self _] },

  -- Now, we use the definition of modular arithmetic to rewrite the expression.
  have h₄ : ((x + 1)^2 * (y + 5)^3) % 19 = ((x + 1)^2 %
end
