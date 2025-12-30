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

  cases n with n hn,
  { contradiction },
  { have h₁ : 4^n = 2 * 2^(n-1),
    by {rw [pow_succ, pow_one] },
    exact (dvd_mul _ _).mpr (dvd_pow _ _),
  },

end
