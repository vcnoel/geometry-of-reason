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

  let d := nat.divisors (6 * n),
  have h₃ : d.card = d.card.filter (λ (a : ℕ), a % 2 = 0) + d.card.filter (λ (a : ℕ), a % 2 = 1),
  { apply finset.card_filter_eq,
    { exact finset.filter_subset (λ (a : ℕ), a % 2 = 0) d },
    { intro a,
      split_ifs with h₄,
      { exact or.inl (a % 2 = 0),
        exact or.inr (a % 2 = 0) },
      { exact or.inl (a % 2 = 1),
        exact or.inr (a % 2 = 1) } } },
  have h₄ : d.card.filter (λ (a : ℕ), a % 2 = 0) = finset.card (nat.divisors (2 * n)),
  { apply finset.card_congr,
    { apply finset.filter_subset (λ (a : ℕ), a % 2 = 0) },
    { intro a,
      split_ifs with h₅,
      { exact or.inl (
end
