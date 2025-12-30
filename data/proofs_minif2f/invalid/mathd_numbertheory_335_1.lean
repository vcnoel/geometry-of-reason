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

  -- First, we rewrite the expression (5 * n) % 7 using the definition of modulo.
  have h₁ : (5 * n) % 7 = ((5 % 7) * n) % 7,
  by rw [mod_eq_mod_of_dvd (dvd_mod_left _ _ _ h₀) (dvd_refl 7)],
  -- Then, we simplify the expression using the definition of modulo again.
  have h₂ : ((5 % 7) * n) % 7 = (5 * n) % 7,
  by rw [mod_eq_mod_of_dvd (dvd_mul (dvd_refl 5) (dvd_refl n)) (dvd_refl 7)],
  -- Finally, we simplify the expression (5 * n) % 7.
  have h₃ : (5 * n) % 7 = 4,
  by rw [h₁, h₂, mod_mul 5 7 n],
  exact h₃

end
