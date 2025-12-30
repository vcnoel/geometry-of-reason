import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_335
  (n : ℕ)
  (h₀ : n % 7 = 5) :
  (5 * n) % 7 = 4 :=
begin

  -- Step 1: Use the distributive property to expand the expression (5 * n) % 7
  have h₁ : (5 * n) % 7 = (5 % 7 * n) % 7,
    by { rw [distrib_mod], },
  -- Step 2: Simplify the expression (5 % 7 * n) % 7 using the definition of modulo
  have h₂ : (5 % 7 * n) % 7 = (5 * n) % 7,
    by { rw [mod_eq_sub, mod_eq_sub, mod_eq_sub, mod_eq_sub, mod_eq_sub, mod_eq_sub], },
  -- Step 3: Use the fact that n % 7 = 5 to simplify the expression (5 * n) % 7
  have h₃ : (5 * n) % 7 = (5 * 5) % 7,
    by { rw [h₀], },
  -- Step 4: Simplify the expression (5 * 5) % 7 using the definition of modulo
  have h₄ : (5 * 5) % 7 = 4,
    by { rw [mod
end
