import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1964_p1_1
  (n : ℕ)
  (h₀ : 7 ∣ (2^n - 1)) :
  3 ∣ n :=
begin

  have h₁ := nat.divisors_of_dvd h₀,
  have h₂ : ∀ k ∈ nat.divisors_of_dvd n,
    3 ∣ k,
  { intros k hk,
    have h₃ : 7 ∣ 2^k - 1,
    { apply h₀,
      apply pow_dvd_pow (nat.divisor_dvd n k) },
    have h₄ : 7 ∣ 2^(k * 3) - 1,
    { apply h₀,
      apply pow_dvd_pow (nat.divisor_dvd n (k * 3)) },
    have h₅ : k * 3 = 3 * k,
    { refl },
    have h₆ : 2^(k * 3) - 1 = 2^3 * 2^k - 1,
    { apply sub_eq_sub,
      { refl },
      { apply pow_dvd_pow (dvd_mul_left _ _) } },
    have h₇ : 2^(k * 3) - 1 ≡ 2^3 * 2^k - 1 (mod 7),
    { apply h₆ },
    have h₈
end
