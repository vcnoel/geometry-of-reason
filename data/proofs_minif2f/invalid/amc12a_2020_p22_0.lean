import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2020_p22
  (S : finset ℕ)
  (h₀ : ∀ (n : ℕ), n ∈ S ↔ 5 ∣ n ∧ nat.lcm 5! n = 5 * nat.gcd 10! n) :
  S.card = 1 :=
begin

  have h₁ : ∀ (n : ℕ), n ∈ S → 5 ∣ n ∧ nat.lcm 5! n = 5 * nat.gcd 10! n,
  { assume n,
    have h₂ : n ∈ S ↔ 5 ∣ n ∧ nat.lcm 5! n = 5 * nat.gcd 10! n,
    { exact h₀ n },
    have h₃ : n ∈ S,
    { exact h₂.mpr (and.intro (nat.dvd_of_dvd_factor 5 n) rfl) },
    exact h₁ n h₃ },
  have h₄ : ∀ (n : ℕ), n ∈ S → n = 10,
  { assume n,
    have h₅ : 5 ∣ n ∧ nat.lcm 5! n = 5 * nat.gcd 10! n,
    { exact h₁ n },
    have h₆ : 5 ∣ 10,
    { exact nat.dvd_of_dvd_factor 5 10 },
    have h₇ : nat.lcm 5! 10 = 5 * nat.gcd 10! 10,
    { exact nat.lcm_dvd_of
end
