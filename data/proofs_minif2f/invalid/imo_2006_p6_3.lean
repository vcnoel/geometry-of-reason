import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_2006_p6
  (a b c : ℝ) :
  (a * b * (a^2 - b^2)) + (b * c * (b^2 - c^2)) + (c * a * (c^2 - a^2)) ≤ (9 * real.sqrt 2) / 32 * (a^2 + b^2 + c^2)^2 :=
begin

  -- First, we will use the following inequality
  -- (x - y)^2 + (y - z)^2 + (z - x)^2 ≥ 0
  -- Then we will expand and simplify the inequality
  have A : (a - b)^2 + (b - c)^2 + (c - a)^2 ≥ 0,
    by refl,

  -- Now, we will expand the inequality
  have B : 2 * a^2 + 2 * b^2 + 2 * c^2 - 2 * a * b - 2 * b * c - 2 * c * a ≥ 0,
    by rw A; ring,

  -- Next, we will use the following inequality
  -- (x + y)^2 ≤ 2 * x^2 + 2 * y^2
  -- Then we will expand and simplify the inequality
  have C : (a + b)^2 ≤ 2 * a^2 + 2 * b^2,
    by refl,

  -- Now, we will expand the inequality
  have D : a^2 + 2 * a * b + b^2 ≤ 2 * a^2 +
end
