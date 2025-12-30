import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2008_p15
  (k : ℕ)
  (h₀ : k = 2008^2 + 2^2008) :
  (k^2 + 2^k) % 10 = 6 :=
begin

  -- k = 2008^2 + 2^2008
  have h₁ : k % 10 = 8,
  { calc k % 10 = (2008^2 + 2^2008) % 10
    : by congr
    { rw [mod_add_mod, mod_pow, mod_add, mod_pow, mod_pow, mod_add, mod_pow, mod_add, mod_pow, mod_add, mod_pow, mod_add, mod_pow, mod_add, mod_pow, mod_add, mod_pow, mod_add, mod_pow, mod_add, mod_pow, mod_add, mod_pow, mod_add, mod_pow, mod_add, mod_pow, mod_add, mod_pow, mod_add, mod_pow, mod_add, mod_pow, mod_add, mod_pow, mod_add, mod_pow, mod_add, mod_pow, mod_add, mod_pow, mod_add, mod_pow, mod_add, mod_pow, mod_add, mod_pow, mod_add, mod_pow, mod_add, mod_pow, mod_add, mod_pow, mod_add, mod_pow, mod_add, mod_pow, mod_add, mod_pow, mod_add, mod_pow, mod_add, mod_pow, mod_add, mod
end
