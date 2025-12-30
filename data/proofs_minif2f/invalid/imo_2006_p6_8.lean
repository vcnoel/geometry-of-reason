import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_2006_p6
  (a b c : ℝ) :
  (a * b * (a^2 - b^2)) + (b * c * (b^2 - c^2)) + (c * a * (c^2 - a^2)) ≤ (9 * real.sqrt 2) / 32 * (a^2 + b^2 + c^2)^2 :=
begin

  have h1 : (a * b * (a^2 - b^2)) + (b * c * (b^2 - c^2)) + (c * a * (c^2 - a^2)) =
          (a^2 * b^2 - b^4) + (b^2 * c^2 - c^4) + (c^2 * a^2 - a^4),
  by ring,
  have h2 : (a^2 * b^2 - b^4) + (b^2 * c^2 - c^4) + (c^2 * a^2 - a^4) =
          (a^2 + b^2 + c^2) * (a^2 * b^2 + b^2 * c^2 + c^2 * a^2 - a^4 - b^4 - c^4),
  by ring,
  have h3 : a^2 * b^2 + b^2 * c^2 + c^2 * a^2 - a^4 - b^4 - c^4 =
          (a^2 * b^2 + a^2 * c^
end
