import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem numbertheory_prmdvsneqnsqmodpeq0
  (n : ℤ)
  (p : ℕ)
  (h₀ : nat.prime p) :
  ↑p ∣ n ↔ (n^2) % p = 0 :=
begin

  split,
  { intro h,
    apply div_of_mod_eq_zero,
    exact (mod_eq_zero_iff_is_zero.mp (h n^2)) },
  { intro h,
    apply mod_eq_zero_iff_is_zero.mpr,
    exact (div_of_mod_eq_zero h n^2) }

end
