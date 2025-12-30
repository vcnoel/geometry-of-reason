import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_102 :
  (2^8) % 5 = 1 :=
begin

  -- Here we need to calculate 2^8 mod 5.
  -- We can calculate it using the property of modular arithmetic that (a*b) % c = ((a%c) * (b%c)) % c
  have h1 : (2^8) % 5 = ((2^4) % 5 * (2^4) % 5) % 5,
  { simp },
  -- Now we need to calculate 2^4 mod 5.
  -- We can calculate it using the property of modular arithmetic that (a*b) % c = ((a%c) * (b%c)) % c
  have h2 : (2^4) % 5 = ((2^2) % 5 * (2^2) % 5) % 5,
  { simp },
  -- Now we need to calculate 2^2 mod 5.
  -- We can calculate it using the property of modular arithmetic that (a*b) % c = ((a%c) * (b%c)) % c
  have h3 : (2^2) % 5 = ((2 % 5) * (2 % 5)) % 5,
  { simp },

end
