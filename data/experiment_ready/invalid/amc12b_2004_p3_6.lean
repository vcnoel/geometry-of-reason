import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12b_2004_p3
  (x y : ℕ)
  (h₀ : 2^x * 3^y = 1296) :
  x + y = 8 :=
begin

  have h₁ := pow_two_eq_pow_five_and_pow_six 1296,
  cases h₁ with h₁a h₁b,
  { contradiction },
  { have h₂ : 2^x * 3^y = 2^4 * 3^4,
    by { rw h₁b, refl },
    have h₃ : x = 4,
    by { rw h₂, exact pow_two_eq_pow_five_and_pow_six.mpr (nat.succ_ne_zero (pow_five_ne_pow_six 2)) },
    have h₄ : y = 4,
    by { rw h₂, exact pow_two_eq_pow_five_and_pow_six.mpr (nat.succ_ne_zero (pow_five_ne_pow_six 3)) },
    have h₅ : x + y = 4 + 4,
    by { rw h₃, rw h₄, refl },
    exact h₅ }

end
