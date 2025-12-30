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

  rw [← two_pow_eq_two_mul_pow],
  exact two_dvd_mul n h₀,

end
