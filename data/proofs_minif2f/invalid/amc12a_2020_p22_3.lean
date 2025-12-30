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

  let S' : finset ℕ := {n | n ∈ S ∧ 5 ∣ n ∧ nat.lcm 5! n = 5 * nat.gcd 10! n},
  have h₁ : S = S', by {ext, simp [h₀]},
  have h₂ : ∀ (n : ℕ), n ∈ S' → n = 1,
  { intro n,
    intro h₃,
    have h₄ : 5 ∣ n, from h₃.left,
    have h₅ : 5 ∣ 10, by norm_num,
    have h₆ : 10! = 10 * 9 * 8 * 7 * 6 * 5!, by norm_num,
    have h₇ : nat.lcm 5! n = nat.lcm (5!) (5 * nat.gcd 10! n), by {congr, exact h₃.right},
    have h₈ : nat.lcm (5!) (5 * nat.gcd 10! n) = 5! * 5 * nat.gcd 10! n, by {congr, exact h₃.right},
    have h₉ : nat.lcm (
end
