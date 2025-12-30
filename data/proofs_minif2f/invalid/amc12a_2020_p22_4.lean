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

  -- First, we want to show that there is exactly one element in S.
  -- We can do this by showing that the only possible elements in S are 10 and 0.
  -- Let's start by assuming that n is in S, and try to show that n must be 10 or 0.
  assume n : ℕ,
  assume hn : n ∈ S,
  -- We know that 5 divides n, so we can write n = 5k for some k.
  have h₁ : 5 ∣ n,
  from h₀ n hn,

  -- We also know that the least common multiple of 5! and n is 5 times the greatest common divisor of 10! and n.
  have h₂ : nat.lcm (5!) n = 5 * nat.gcd (10!) n,
  from h₀ n hn,

  -- Since 5! is a factor of 10!, we know that nat.gcd(10!, n) is a multiple of 5.
  have h₃ : nat.gcd (10!) n = 5 * m for some m,
  from nat.gcd_dvd_of_dvd (10!) n,

  -- Now we can substitute
end
