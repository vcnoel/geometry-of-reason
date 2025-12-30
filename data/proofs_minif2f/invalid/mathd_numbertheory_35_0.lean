import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_35
  (S : finset ℕ)
  (h₀ : ∀ (n : ℕ), n ∣ (nat.sqrt 196)) :
  ∑ k in S, k = 24 :=
begin

  apply finset.sum_eq,
  { intro n,
    have h₁ : n ∣ 196,
    { have h₂ : nat.sqrt 196 ∣ (nat.sqrt 196)^2,
      { apply nat.sqrt_dvd,
        apply pow_dvd_pow,
        apply nat.dvd_id,
        apply h₀ },
      apply nat.dvd_of_dvd_sqrt,
      apply h₂ },
    have h₃ : n ∣ 2^2 * 7^2,
    { apply nat.dvd_mul,
      apply h₁ },
    have h₄ : n ∣ 2 * 7,
    { apply nat.dvd_mul,
      apply nat.dvd_of_dvd_mul,
      apply h₃ },
    have h₅ : n ∣ 14,
    { apply nat.dvd_of_dvd_mul,
      apply h₄ },
    have h₆ : n ∣ 2 * 7,
    { apply nat.dvd_mul,
      apply nat.dvd_of_dvd_sqrt,
      apply nat.sqrt_dvd,
      apply pow_dvd_pow,
      apply nat.dvd_id,
      apply h₅ },
    have h₇ : n ∣ 14,
   
end
