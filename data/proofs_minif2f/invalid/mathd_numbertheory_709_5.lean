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

  have h₃ : ∀ d ∈ nat.divisors (6 * n),
    d ∈ nat.divisors (2 * n) ∨ d ∈ nat.divisors (3 * n),
  { rintros d hd,
    cases nat.divides_dvd_and d (6 * n) with h₃₄ h₃₅,
    { exact h₃₅.1 },
    { exact h₃₅.2 } },
  have h₄ : ∀ d₁ ∈ nat.divisors (2 * n),
    ∀ d₂ ∈ nat.divisors (3 * n),
    d₁ ≠ d₂ → d₁ * d₂ ≠ 6 * n,
  { rintros d₁ hd₁ d₂ hd₂ h₃₆,
    have h₃₇ : d₁ ≠ 1 ∨ d₂ ≠ 1,
    { cases eq_or_ne d₁ 1 with h₃₈ h₃₈,
      { exact or.inr h₃₈ },
      { cases eq_or_ne d₂ 1 with h₃₉ h₃₉,
        { exact or.inl h₃₉ },
        { exact absurd h₃₆ (mul_ne_one (ne_of_eq h₃�
end
