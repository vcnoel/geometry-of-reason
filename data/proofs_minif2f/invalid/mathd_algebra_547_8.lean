import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_547
  (x y : ℝ)
  (h₀ : x = 5)
  (h₁ : y = 2) :
  real.sqrt (x^3 - 2^y) = 11 :=
begin

  -- Step 1: Calculate x^3 and 2^y
  have x_pow_3 : x^3 = 5^3,
  { rw h₀, },
  have pow_2_y : 2^y = 2^2,
  { rw h₁, },
  
  -- Step 2: Simplify x^3 and 2^y
  have x_pow_3' : x^3 = 125,
  { rw x_pow_3, },
  have pow_2_y' : 2^y = 4,
  { rw pow_2_y, },
  
  -- Step 3: Calculate x^3 - 2^y
  have diff : x^3 - 2^y = 125 - 4,
  { rw [x_pow_3', pow_2_y'], },
  
  -- Step 4: Simplify x^3 - 2^y
  have diff' : x^3 - 2^y = 121,
  { rw diff, },
  
  -- Step 5: Calculate sqrt(x^3 - 2^y)
  have sqrt_diff : real.sqrt (x^3 - 2^y
end
