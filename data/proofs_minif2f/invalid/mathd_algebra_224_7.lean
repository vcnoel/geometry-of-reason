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

  have h₁ : ∀ (n : ℕ), n ∈ S ↔ 2 < real.sqrt n ∧ real.sqrt n < 7 / 2,
  { intro n,
    apply and_congr_right,
    apply and_congr_right,
    apply and_congr_right,
    apply iff_congr_left,
    apply and_congr_left,
    apply and_congr_left,
    apply iff_congr_left,
    apply and_congr_left,
    apply and_congr_left,
    exact h₀ n },
  have h₂ : ∀ (n : ℕ), n ∈ S ↔ 4 < n ∧ n < 49,
  { intro n,
    apply and_congr_right,
    apply and_congr_right,
    apply and_congr_right,
    apply and_congr_right,
    apply and_congr_right,
    apply and_congr_right,
    apply and_congr_right,
    apply and_congr_right,
    apply and_congr_right,
    apply and_congr_right,
    apply and_congr_right,
    apply and_congr_right,
    apply and_congr_right,
    apply and_congr_right,
    apply and_congr_right,
    apply and_congr_right,
    apply and_congr_right,
   
end
