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

  cases n with n,
  { cases h₀ with h₀ h₀ },
  { exact nat.dvd_of_dvd_nat (pow_pos (gt_of_lt (lt_of_le_of_lt zero_le_two two_pos)) n) },

end
