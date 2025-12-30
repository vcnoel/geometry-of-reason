import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_403 :
  ∑ k in (nat.proper_divisors 198), k = 270 :=
begin

  have h1 := nat.divisors 198,
  have h2 := nat.proper_divisors 198,
  have h3 : 198 = 2 * 99, by { rw [nat.factor 198, two_mul], },
  have h4 : 99 = 9 * 11, by { rw [nat.factor 99, mul_assoc], },
  have h5 : ∑ k in (nat.proper_divisors 198), k = ∑ k in (nat.proper_divisors (2 * 99)), k,
    by { rw [h3, sum_congr rfl (λ k hk, hk)], },
  have h6 : ∑ k in (nat.proper_divisors (2 * 99)), k = ∑ k in (nat.proper_divisors 99), k,
    by { rw [h4, sum_congr rfl (λ k hk, hk)], },
  have h7 : ∑ k in (nat.proper_divisors 99), k = 9 + 11 + 1,
    by { have h8 := nat.proper_divisors 99,
         have h9 : 99 = 9 * 11, by { rw [
end
