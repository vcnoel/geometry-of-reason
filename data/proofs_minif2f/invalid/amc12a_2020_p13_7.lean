import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2020_p13
  (a b c : ℕ)
  (n : nnreal)
  (h₀ : n ≠ 1)
  (h₁ : 1 < a ∧ 1 < b ∧ 1 < c)
  (h₂ : (n * ((n * (n^(1 / c)))^(1 / b)))^(1 / a) = (n^25)^(1 / 36)) :
  b = 3 :=
begin

  -- We need to prove that b = 3.
  -- To do this, we will use the fact that the equation holds for all values of n.
  -- This means that we can substitute any value of n into the equation and it will still be true.
  -- Let's try substituting n = 2 into the equation.
  have h₃ : (2 * ((2 * (2^(1 / c)))^(1 / b)))^(1 / a) = (2^25)^(1 / 36),
  { -- This is just a simple substitution of n = 2 into the equation.
    rw h₂,
    simp,
  },

  -- Now we can use the fact that a, b, and c are all positive integers.
  -- This means that (2^(1 / c))^(1 / b) is also a positive integer.
  -- So, we can rewrite the equation as follows:
  have h₄ : (2 * ((2^(1 / c))^(1 / b)))^(1 / a) = (2^25)^(1 / 36),
  { -- This is just a simple rewriting of the equation.
    rw h₃,
    simp,
  },

  --
end
