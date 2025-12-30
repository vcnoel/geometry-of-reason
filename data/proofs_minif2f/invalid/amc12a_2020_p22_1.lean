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

  have h₁ : ∀ (n : ℕ), n ∈ S → 5 ∣ n,
  { intro n,
    exact h₀ n.1 (by assumption) },
  have h₂ : ∀ (n : ℕ), n ∈ S → nat.lcm 5! n = 5 * nat.gcd 10! n,
  { intro n,
    exact h₀ n.1 (by assumption) },
  have h₃ : ∀ (n : ℕ), n ∈ S → 5 ∣ nat.gcd 10! n,
  { intro n,
    have h₄ : 10! ∣ n,
    { have h₅ : 5 ∣ n,
      { exact h₁ n },
      have h₆ : 2 ∣ n,
      { have h₇ : 2 ∣ 10,
        { norm_num },
        have h₈ : 2 ∣ n,
        { exact h₇ },
        exact h₈ },
      have h₉ : 10 ∣ n,
      { have h₁₀ : 5 * 2 ∣ n,
        { exact h₅ * h₆ },
        have h₁₁ : 
end
