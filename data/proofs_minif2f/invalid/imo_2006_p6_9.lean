import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_2006_p6
  (a b c : ℝ) :
  (a * b * (a^2 - b^2)) + (b * c * (b^2 - c^2)) + (c * a * (c^2 - a^2)) ≤ (9 * real.sqrt 2) / 32 * (a^2 + b^2 + c^2)^2 :=
begin

  -- Rewrite the left-hand side of the inequality.
  -- We use the distributive law to expand the left-hand side.
  -- We use the fact that a^2 - b^2 = (a-b)(a+b) and b^2 - c^2 = (b-c)(b+c) and c^2 - a^2 = (c-a)(c+a).
  -- We use the fact that (a-b)(b-c)(c-a) = -(a-b)(b-c)(a-c) = -((a-b)(a-c)-(b-c)(a-c)).
  -- We use the fact that (a-b)(a-c) - (b-c)(a-c) = (a-b-c)(a-c).
  -- We use the fact that (a-b-c)(a-c) = -(a-c)(b+c).
  -- We use the fact that (a-c)(b+c) = a(b+c) - c(b+c) = ab + ac - bc - c^2.
  -- We use the fact that a(b+c) - c(b+c) = ab + ac - bc - c^2.
  -- We use the fact that ab + ac - bc - c^2 =
end
