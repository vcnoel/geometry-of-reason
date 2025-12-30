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

  let S' := {n | n ∈ S ∧ 2 < real.sqrt n},
  have h₁ : S = S' := by { ext1 n, exact h₀ n },
  have h₂ : ∀ (n : ℕ), n ∈ S' ↔ real.sqrt n < 7 / 2 ∧ 2 < real.sqrt n,
  { rintro (n, h₃),
    { exact h₀ n },
    { exact h₀ n },
  },
  have h₃ : ∀ (n : ℕ), n ∈ S' ↔ 2 < real.sqrt n,
  { rintro (n, h₃),
    { exact h₃ },
    { exact h₃ },
  },
  have h₄ : S'.card = 6,
  { have h₅ : ∀ (n : ℕ), n ∈ S' → 2 < real.sqrt n,
    { rintro (n, h₃),
      { exact h₃ },
    },
    have h₆ : ∀ (n : ℕ), 2 < real.sqrt n → n ∈ S',
    { rintro (n, h₃),
      { exact h₃ },
    },
    have h₇ : S'.card = {n |
end
