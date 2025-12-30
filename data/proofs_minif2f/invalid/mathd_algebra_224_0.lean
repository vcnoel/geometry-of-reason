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

  refine finset.card_congr _ _,
  { exact λ n, h₀ n },
  { intros n,
    refine ⟨_, _⟩,
    { rintro (h₁, h₂),
      refine ⟨_, h₂, h₁⟩,
      rw real.sqrt_pos,
      exact lt_of_lt_of_le (real.sqrt_pos.2 h₂) (real.sqrt_le _),
      exact real.sqrt_pos.2 h₁ },
    { rintro ⟨h₁, h₂, h₃⟩,
      refine ⟨_, _⟩,
      { exact real.sqrt_pos.2 h₃ },
      { exact lt_of_lt_of_le (real.sqrt_pos.2 h₁) (real.sqrt_le _),
        exact real.sqrt_pos.2 h₂ } },
    { exact ⟨2, 4, 9, 16, 25, 36, 49, 64⟩ },
    { exact λ n, n ∈ _ },
    { exact λ n, n ∈ _ },
    { exact λ n, n ∈ _ },
    { exact λ n, n ∈ _ },
    { exact λ n, n ∈ _ },
    { exact λ n, n ∈ _ },
    { exact λ n, n ∈ _
end
