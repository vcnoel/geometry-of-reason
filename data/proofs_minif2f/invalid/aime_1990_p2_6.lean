import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem aime_1990_p2 :
  (52 + 6 * real.sqrt 43)^((3 : ℝ) / 2) - (52 - 6 * real.sqrt 43)^((3 : ℝ) / 2)  = 828 :=
begin

  -- First, we need to simplify the expression on the left-hand side of the equation.
  -- We can do this by expanding the binomial expressions and then combining like terms.
  -- The binomial expansion formula is (a + b)^n = ∑[k=0..n] (n choose k) * a^(n-k) * b^k.
  -- We can use this formula to expand the expressions (52 + 6 * sqrt 43) and (52 - 6 * sqrt 43).
  have h1 := binomial_expansion (52 + 6 * real.sqrt 43) 3,
  have h2 := binomial_expansion (52 - 6 * real.sqrt 43) 3,

  -- Now, we can use the binomial expansion formula to expand the expressions.
  have h3 := by rw h1,
  have h4 := by rw h2,

  -- Next, we need to simplify the expression on the left-hand side of the equation.
  -- We can do this by combining like terms and then using the properties of exponents.
  have h5 := by simp at h3,
  have h6 := by simp at h4,

  -- Now,
end
