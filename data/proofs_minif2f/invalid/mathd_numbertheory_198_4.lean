import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_198 :
  (5^2005) % 100 = 25 :=
begin

  -- We need to prove that (5^2005) % 100 = 25.
  -- We will use the definition of modular arithmetic to rewrite this as:
  -- (5^2005) % 100 = 5 * (5^2004) % 100
  -- Then, we will use the fact that (5^2004) % 100 = 25 to simplify the expression.
  -- Finally, we will use the fact that 5 * 25 = 125 and 125 % 100 = 25 to conclude that (5^2005) % 100 = 25.
  have h1 := pow_mod 5 2005 100,
  have h2 := pow_mod 5 2004 100,
  have h3 := congr_arg (λ x, x % 100) (mul_comm 5 h2),
  have h4 := congr_arg (λ x, x % 100) (eq.mpr (eq.refl (25 * 5 % 100)) (mod_add_self 125)),
  have h5 := h4.trans h3,
  have h6 := h5.trans h1,
  exact h6,

end
