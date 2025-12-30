import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2016_p3
  (f : ℝ → ℝ → ℝ)
  (h₀ : ∀ x, ∀ y ≠ 0, f x y = x - y * int.floor (x / y)) :
  f (3 / 8) (-(2 / 5)) = -(1 / 40) :=
begin

  -- We apply the definition of f on 3/8 and -2/5.
  apply h₀ (3 / 8) (-(2 / 5)),
  -- Now we need to prove that 3/8 - (-2/5) * floor((3/8)/(−2/5)) = −1/40.
  -- First, we calculate the quotient (3/8)/(−2/5).
  calc
    (3 / 8) / (-(2 / 5)) = -(3 / 8) * (5 / 2) : by ring
      -- Now we calculate the floor of the quotient.
     ... = -(15 / 16) : by norm_num
      -- Now we multiply the floor by -2/5.
     ... * (-(2 / 5)) = 15 / 80 : by ring
      -- Now we calculate 3/8 - (15/80).
     ... = 3 / 8 - 15 / 80 : by refl
      -- Now we find a common denominator and subtract.
     ... = 24 / 160 - 15 / 80 : by norm_num
      -- Now we find a common denominator and
end
