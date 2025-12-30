import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_568
  (a : ℝ) :
  (a - 1) * (a + 1) * (a + 2) - (a - 2) * (a + 1) = a^3 + a^2 :=
begin

  -- Expand the left-hand side using the distributive property
  calc
    (a - 1) * (a + 1) * (a + 2) - (a - 2) * (a + 1)
      = ((a - 1) * (a + 1)) * (a + 2) - (a - 2) * (a + 1)
        : by {rw mul_assoc}
      = (a^2 - 1) * (a + 2) - (a - 2) * (a + 1)
        : by {rw mul_sub}

  -- Expand the left-hand side using the distributive property again
  = (a^2 * (a + 2)) - (1 * (a + 2)) - (a * (a + 1)) + (2 * (a + 1))
    : by {rw mul_sub}

  -- Use the distributive property to expand the terms
  = a^3 + 2 * a^2 - (a + 2) - a^2 - a + 2 * a + 2
    : by {rw mul_add}

  -- Combine
end
