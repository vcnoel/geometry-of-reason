import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_224
  (S : finset ℕ)
  (h₀ : ∀ (n : ℕ), n ∈ S ↔ real.sqrt n < 7 / 2 ∧ 2 < real.sqrt n) :
  S.card = 8 :=
begin

  apply finset.card_congr h₀,
  let f : ℕ → Prop := λ n, real.sqrt n < 7 / 2 ∧ 2 < real.sqrt n,
  have hf : injective f,
  { intro x y,
    assume hx : f x,
    assume hy : f y,
    have h₁ : x = y,
    { have h₂ : 2 < real.sqrt x ∧ 2 < real.sqrt y,
      by { exact and.intro hx.2 hy.2 },
      have h₃ : real.sqrt x = real.sqrt y,
      { exact lt_of_le_of_lt (real.sqrt_le_sqrt h₂.1) (real.sqrt_le_sqrt h₂.2) },
      have h₄ : x = y,
      { exact (real.sqrt_eq_sqrt h₃).mp (real.sqrt_eq_sqrt h₃) },
      exact h₄ },
    exact h₁ },
  have h₁ : range f = {n : ℕ | 2 < real.sqrt n ∧ real.sqrt n < 7 / 2},
  { apply set.ext,
    intro n,
    have h₂ : n ∈ range f,
    { apply hf,
      exact and.intro (real.sqrt_lt_sqrt
end
