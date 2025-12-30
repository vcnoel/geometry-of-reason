import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2013_p7
  (s : ℕ → ℝ)
  (h₀: ∀ n, s (n + 2) = s (n + 1) + s n)
  (h₁ : s 9 = 110)
  (h₂ : s 7 = 42) :
  s 4 = 10 :=
begin

  -- 2013 AMC 12A Problem 7
  -- Problem:  Let f(n) = f(n + 1) + f(n - 1).  Find f(4).
  --  Given f(7) = 42 and f(9) = 110, determine f(4).
  --  Solution:
  --  We can rewrite the equation as: f(n+1) - f(n) = f(n) - f(n-1)
  --  This is a telescoping equation, so we can sum from 5 to 8:
  --  f(8) - f(5) = f(7) - f(6) + f(6) - f(5)
  --  f(8) - f(5) = f(7) - f(5)
  --  f(8) = 2f(7) - f(5)
  --  We can now sum from 9 to 10:
  --  f(10) - f(9) = f(9) - f(8) + f(8) - f(9)
  --  f(10) - f(9) = f(
end
