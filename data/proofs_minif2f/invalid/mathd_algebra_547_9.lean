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

  -- Step 1:  We need to show that `real.sqrt (x^3 - 2^y) = 11`.
  -- Step 2:  First, let's simplify `x^3 - 2^y`.
  -- Step 3:  Since `x = 5` and `y = 2`, we can substitute these values into the expression.
  -- Step 4:  So, `x^3 - 2^y = 5^3 - 2^2 = 125 - 4 = 121`.
  -- Step 5:  Now, we need to show that `real.sqrt 121 = 11`.
  -- Step 6:  By definition, `real.sqrt 121` is the number that, when squared, equals `121`.
  -- Step 7:  Clearly, `11` satisfies this property, so `real.sqrt 121 = 11`.
  -- Step 8:  Therefore, we have shown that `real.sqrt (x^3 - 2^y) = 11`.

  -- Step 9:  Now, let's write the proof in Lean 4.
  have h₂ : x^3 - 2
end
