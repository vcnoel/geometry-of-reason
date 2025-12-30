import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem numbertheory_2dvd4expn
  (n : ℕ)
  (h₀ : n ≠ 0) :
  2 ∣ 4^n :=
begin

  induction n with n ih,
  { contradiction },
  { calc 4^(n+1) = 4^n * 4
              = 4^n * 2^2
              = 2^2 * 4^n
              = 2 * 2 * 4^n },

end
