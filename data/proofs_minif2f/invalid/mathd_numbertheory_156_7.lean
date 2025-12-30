import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_156
  (n : ℕ)
  (h₀ : 0 < n) :
  nat.gcd (n + 7) (2 * n + 1) ≤ 13 :=
begin

  have h₁ : (n + 7) % 4 = n % 4,
  { rw [mod_eq_sub_mod] },
  have h₂ : (2 * n + 1) % 4 = 1,
  { ring },
  have h₃ : ((n + 7) % 4) * ((2 * n + 1) % 4) = 1,
  { rw [h₁, h₂] },
  have h₄ : ((n + 7) % 4) * ((2 * n + 1) % 4) ≤ 1,
  { exact le_of_eq h₃ },
  have h₅ : nat.gcd (n + 7) (2 * n + 1) % 4 ≤ 1,
  { exact gcd_le_one_of_dvd_of_dvd_of_le h₄ },
  have h₆ : nat.gcd (n + 7) (2 * n + 1) = nat.gcd (n + 7) (2 * n + 1) % 4,
  { apply gcd_eq_gcd_mod },
  have h₇ : nat.gcd (n + 7)
end
