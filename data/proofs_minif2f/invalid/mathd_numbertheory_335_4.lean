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

  have h₁ := n % 7 = 5,
  have h₂ := 5 * (n % 7) = 5 * 5,
  have h₃ := 5 * 5 % 7 = 4,
  exact congr_arg (λ x, x % 7) (mul_comm 5 (n % 7)) >>= (congr_arg (λ x, x % 7) (mod_add_self' (n % 7))) >>= (congr_arg (λ x, x % 7) h₂) >>= (congr_arg (λ x, x % 7) h₃)

end
