import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_221
  (S : finset ℕ)
  (h₀ : ∀ (x : ℕ), x ∈ S ↔ 0 < x ∧ x < 1000 ∧ x.divisors.card = 3) :
  S.card = 11 :=
begin

  let f : ℕ → Prop := λ n, n ∈ S,
  have h₁ : ∀ (n : ℕ), f n → 0 < n ∧ n < 1000 ∧ n.divisors.card = 3,
  from λ n hf, h₀ n hf,
  have h₂ : ∀ (n : ℕ), f n → n.divisors.card = 3,
  from λ n hf, h₁ n hf,
  let g : ℕ → ℕ := λ n, n.divisors.card,
  have h₃ : ∀ (n : ℕ), f n → g n = 3,
  from λ n hf, h₂ n hf,
  have h₄ : ∀ (n : ℕ), f n → g n ∈ {1, 2, 3},
  from λ n hf, eq_of_eq_divisors_card hf,
  have h₅ : ∀ (n : ℕ), f n → g n = 3,
  from λ n hf, h₃ n hf,
  have h₆ : ∀ (n : ℕ), f n → g n ∈ {1, 2, 3},
  from λ n hf, h₄ n hf,
  have h₇
end
