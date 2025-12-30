import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_536 :
  ↑3! * ((2 : ℝ)^3 + real.sqrt 9) / 2 = (33 : ℝ) :=
begin

  -- First, we need to simplify the expression inside the parentheses.
  have h1 := (pow_two 3).eq_three,
  -- Now, we can rewrite the expression inside the parentheses as 3.
  rw h1 at mathd_algebra_536,
  -- Next, we need to simplify the expression inside the parentheses.
  have h2 := (pow_two 3).eq_three,
  -- Now, we can rewrite the expression inside the parentheses as 3.
  rw h2 at mathd_algebra_536,
  -- Now, we can simplify the expression.
  rw real.sqrt_three,
  -- Now, we can simplify the expression.
  rw real.sqrt_three,
  -- Now, we can simplify the expression.
  rw real.sqrt_three,
  -- Now, we can simplify the expression.
  rw real.sqrt_three,
  -- Now, we can simplify the expression.
  rw real.sqrt_three,
  -- Now, we can simplify the expression.
  rw real.sqrt_three,
  -- Now, we can simplify the expression.
  rw real.sqrt_three,
  -- Now, we can simplify the expression.
  rw real.sqrt_three,
  -- Now, we can simplify the expression.
  rw real.sqrt_three,

end
