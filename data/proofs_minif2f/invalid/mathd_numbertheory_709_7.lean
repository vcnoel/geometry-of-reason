import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_709
  (n : ℕ)
  (h₀ : 0 < n)
  (h₁ : finset.card (nat.divisors (2 * n)) = 28)
  (h₂ : finset.card (nat.divisors (3 * n)) = 30) :
  finset.card (nat.divisors (6 * n)) = 35 :=
begin

  apply nat.divisors_eq_card,
  have h₃ : 6 ∣ 6 * n := div_dvd_mul n,
  have h₄ : 2 ∣ 6 * n := div_dvd_mul n,
  have h₅ : 3 ∣ 6 * n := div_dvd_mul n,
  have h₆ : 2 * 3 ∣ 6 * n := div_dvd_mul n,
  have h₇ : 2 * 2 ∣ 6 * n := div_dvd_mul n,
  have h₈ : 2 * 2 * 3 ∣ 6 * n := div_dvd_mul n,
  have h₉ : 2 * 3 * 3 ∣ 6 * n := div_dvd_mul n,
  have h₁₀ : 2 * 2 * 3 * 3 ∣ 6 * n := div_dvd_mul n,
  have h₁₁ : 2 * 2 * 3 * 3 * 3 ∣ 6 * n := div_dvd_mul n,
  have h₁₂ : 2 * 2 * 2 * 3 * 3 *
end
