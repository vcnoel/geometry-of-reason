import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2008_p4 :
  ∏ k in finset.Icc (1 : ℕ) 501, ((4 : ℝ) * k + 4) / (4 * k) = 502 :=
begin

  -- The problem asks us to prove that the product of ((4 * k + 4) / (4 * k)) from k = 1 to 501 is equal to 502.
  -- To start, let's first consider the product of ((4 * k + 4) / (4 * k)) from k = 1 to n.
  -- This product can be rewritten as:
  --   ∏ k in finset.Icc (1 : ℕ) n, ((4 * k + 4) / (4 * k))
  -- = ∏ k in finset.Icc (1 : ℕ) n, (1 + 1/(4 * k))
  -- = (1 + 1/(4 * 1)) * (1 + 1/(4 * 2)) *... * (1 + 1/(4 * n))
  -- = 1 * (1 + 1/4) * (1 + 1/8) *... * (1 + 1/(4 * n))
  -- Now, we can use the formula for the product of a geometric series to simplify the product.
  -- The formula states that the product of 1 + x * y is equal
end
