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
  { intros n hs,
    exact h₀ n hs },
  have h₂ : ∀ (n : ℕ), 5 ∣ n → nat.lcm 5! n = 5 * nat.gcd 10! n,
  { intros n hn,
    exact h₁ n hn },
  have h₃ : ∀ (n : ℕ), n ∈ S → nat.lcm 5! n = 5 * nat.gcd 10! n,
  { intros n hs,
    exact h₂ n hs },
  have h₄ : ∀ (n : ℕ), n ∈ S → 5 ∣ nat.lcm 5! n,
  { intros n hs,
    exact (divisor_of_lcm (h₂ n hs)).mpr hs },
  have h₅ : ∀ (n : ℕ), n ∈ S → 5 ∣ n,
  { intros n hs,
    exact (h₃ n hs).symm ▸ h₄ n hs },
  have h₆ : ∀ (n :
end
