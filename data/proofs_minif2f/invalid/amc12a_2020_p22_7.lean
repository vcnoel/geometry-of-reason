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

  -- We are given that for all n in S, n is divisible by 5 and the least common multiple of 5! and n is 5 times the greatest common divisor of 10! and n.
  -- Since 10! is divisible by 5!, the least common multiple of 5! and 10! is 10!.
  -- Therefore, the least common multiple of 5! and n is 5 times the greatest common divisor of 10! and n.
  -- This implies that the greatest common divisor of 10! and n is 10! divided by 5, which is 10!/5.
  -- Therefore, n is equal to 10!/5, which is the only element in S.
  have h₁ : ∀ (n : ℕ), n ∈ S → n = 10!/5,
  from
    λ (n : ℕ) (hn : n ∈ S),
    by
      { have h₂ : 5 ∣ n := h₀ n hn,
        have h₃ : nat.lcm 5! n = 5 * nat.gcd 10! n := h₀ n hn,
        have h₄ : nat.lcm 5! 10
end
