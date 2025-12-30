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

  -- Step 1: Simplify (x + 1)^2 % 19
  have h₂ : (x + 1)^2 % 19 = ((x + 1) % 19)^2,
    by rw mod_add_one,

  -- Step 2: Simplify ((x + 1) % 19)^2
  have h₃ : ((x + 1) % 19)^2 = (x % 19 + 1)^2,
    by rw mod_add_one,

  -- Step 3: Simplify (x % 19 + 1)^2
  have h₄ : (x % 19 + 1)^2 = (4 + 1)^2,
    by rw h₀,

  -- Step 4: Simplify (4 + 1)^2
  have h₅ : (4 + 1)^2 = 25,
    by ring,

  -- Step 5: Simplify 25 % 19
  have h₆ : 25 % 19 = 6,
    by rw mod_eq_of_lt (by linarith),

  -- Step 6: Simplify (y + 5)^3 % 19

end
