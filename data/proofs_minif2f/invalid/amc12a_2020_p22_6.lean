import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2020_p22
  (S : finset ℕ)
  (h₀ : ∀ (n : ℕ), n ∈ S ↔ 5 ∣ n ∧ nat.lcm 5! n = 5 * nat.gcd 10! n) :
  S.card = 1 :=
begin

  have h₁ : ∀ (n : ℕ), n ∈ S → 5 ∣ n ∧ nat.lcm 5! n = 5 * nat.gcd 10! n,
  from λ (n : ℕ) (hn : n ∈ S), h₀ n,

  have h₂ : ∀ (n : ℕ), 5 ∣ n ∧ nat.lcm 5! n = 5 * nat.gcd 10! n → n = 5,
  from λ (n : ℕ) (h : 5 ∣ n ∧ nat.lcm 5! n = 5 * nat.gcd 10! n),
  let m := h.left,
  let e := h.right,
  have h₃ : 5 ∣ 5! * n,
  from mul_left_dvd h.right (dvd_refl n),
  have h₄ : 5 ∣ 5,
  from dvd_refl 5,
  have h₅ : 5 ∣ n,
  from mul_right_dvd h₄ h₃,
  have h₆ : 5 ∣ nat.gcd 10! n,
  from mul_right_dvd h₄ e,
  have h�
end
