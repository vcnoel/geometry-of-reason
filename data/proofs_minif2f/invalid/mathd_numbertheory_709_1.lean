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

  have h₃ : finset.card (finset.range 1) = 1 := by finset.card_of_fin 1,
  have h₄ : finset.card (finset.range 2) = 2 := by finset.card_of_fin 2,
  have h₅ : finset.card (finset.range 3) = 3 := by finset.card_of_fin 3,
  have h₆ : finset.card (finset.range 4) = 4 := by finset.card_of_fin 4,
  have h₇ : finset.card (finset.range 5) = 5 := by finset.card_of_fin 5,
  have h₈ : finset.card (finset.range 6) = 6 := by finset.card_of_fin 6,
  have h₉ : finset.card (finset.range 7) = 7 := by finset.card_of_fin 7,
  have h₁₀ : finset.card (finset.range 8) = 8 := by finset.card_of_fin 8,
  have h₁₁ : finset.card (finset.range 9) = 9 := by finset.card_of
end
