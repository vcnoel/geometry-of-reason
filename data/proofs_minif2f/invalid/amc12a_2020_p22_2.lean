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

  by_cases h₁ : S.card = 0,
  { rw [h₁, card_eq_zero],
    exact λ x : ℕ, h₀ x.left (h₀ x.right) },
  { have h₂ : ∀ (n : ℕ), n ∈ S → 5 ∣ n, from
    λ n hn, h₀ n.left hn,
    have h₃ : ∀ (n : ℕ), n ∈ S → nat.lcm 5! n = 5 * nat.gcd 10! n, from
    λ n hn, h₀ n.right hn,
    have h₄ : ∀ (n : ℕ), n ∈ S → 5 ∣ 5! * n, from
    λ n hn, mul_dvd_mul (dvd_refl _) (h₂ n hn),
    have h₅ : ∀ (n : ℕ), n ∈ S → 5 ∣ 5 * nat.gcd 10! n, from
    λ n hn, mul_dvd_mul (dvd_refl _) (dvd_mul_right _ (h₃ n hn)),
    have h₆ : ∀ (n : ℕ), n ∈ S → 5 ∣ nat.gcd 10!
end
