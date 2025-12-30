import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_2006_p6
  (a b c : ℝ) :
  (a * b * (a^2 - b^2)) + (b * c * (b^2 - c^2)) + (c * a * (c^2 - a^2)) ≤ (9 * real.sqrt 2) / 32 * (a^2 + b^2 + c^2)^2 :=
begin

  -- Rewrite the left-hand side of the inequality
  have A : (a * b * (a^2 - b^2)) + (b * c * (b^2 - c^2)) + (c * a * (c^2 - a^2)) =
    a * b * (a^2 - b^2) + b * c * (b^2 - c^2) + c * a * (c^2 - a^2),
  by reflexivity,

  -- Use the Cauchy-Schwarz inequality
  have B : a * b * (a^2 - b^2) + b * c * (b^2 - c^2) + c * a * (c^2 - a^2) ≤
    ((a^2 + b^2 + c^2) * ((a^2 - b^2)^2 + (b^2 - c^2)^2 + (c^2 - a^2)^2))^(1/2),
  by {
    apply cauchy_schwarz,
    refine a * (a^2 - b^2 + b^2 - c^2 + c^2 - a
end
