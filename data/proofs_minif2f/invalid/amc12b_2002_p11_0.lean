import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12b_2002_p11
  (a b : ℕ)
  (h₀ : nat.prime a)
  (h₁ : nat.prime b)
  (h₂ : nat.prime (a + b))
  (h₃ : nat.prime (a - b)) :
  nat.prime (a + b + (a - b + (a + b))) :=
begin

  -- We will use the fact that if p is prime, then p divides x + y if and only if p divides x or p divides y.
  -- We will use the fact that if p is prime, then p divides x - y if and only if p divides x or p divides y.
  -- We will use the fact that if p is prime, then p divides x * y if and only if p divides x or p divides y.
  have h₄ := nat.prime_divides_add h₀ h₁,
  have h₅ := nat.prime_divides_sub h₀ h₁,
  have h₆ := nat.prime_divides_add h₂ h₃,
  have h₇ := nat.prime_divides_sub h₂ h₃,

  -- We will show that (a + b + (a - b + (a + b))) is divisible by a and b.
  have h₈ : nat.prime_divides (a + b + (a - b + (a + b))) a := 
end
