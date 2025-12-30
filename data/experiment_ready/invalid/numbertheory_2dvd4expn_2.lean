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

  cases n,
  { exact absurd rfl h₀ },
  { exact dvd_of_dvd_pow (dvd_mul_left 2 4) },

end
