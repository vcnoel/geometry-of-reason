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

  have h₁ : ∀ (n : ℕ), n ∈ S → 2 < real.sqrt n,
  { intros n hs,
    exact h₀.2 hs },
  have h₂ : ∀ (n : ℕ), n ∈ S → real.sqrt n < 7 / 2,
  { intros n hs,
    exact h₀.1 hs },
  have h₃ : ∀ (n : ℕ), n ∈ S → 2 < n ∧ n < 49,
  { intros n hs,
    exact ⟨h₁ n hs, h₂ n hs ▸ real.sqrt_lt_sq n ▸ nat.lt_sqrt n ▸ nat.succ_pos 2⟩ },
  have h₄ : ∀ (n : ℕ), n ∈ S → n ∈ {2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 
end
