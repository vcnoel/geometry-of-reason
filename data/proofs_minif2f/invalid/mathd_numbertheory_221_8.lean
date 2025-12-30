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

  let S' := S.filter (λ x, x.divisors.card = 3),
  have h₁ : S = S',
  { ext x,
    simp [h₀, and_comm, and_assoc, and_imp],
    split,
    { intro h,
      exact h },
    { intro h,
      exact h } },
  have h₂ : ∀ (x : ℕ), x ∈ S' ↔ 0 < x ∧ x < 1000 ∧ x.divisors.card = 3,
  { rintro x (h, _),
    exact h₀ x },
  have h₃ : ∀ (x : ℕ), x ∈ S' → x.divisors.card = 3,
  { rintro x h,
    exact h₂ x h },
  let f : ℕ → ℕ := λ x, x.divisors.card,
  have h₄ : function.injective f,
  { rintro x y h,
    exact h₃ x h },
  have h₅ : S'.card = (finset.range 1000).filter (f) card,
  { simp [h₃, h₂] },
  have h₆ : finset.range 1000.filter f = finset.range 100
end
