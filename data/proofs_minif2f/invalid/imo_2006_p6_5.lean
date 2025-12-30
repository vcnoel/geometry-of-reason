import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_2006_p6
  (a b c : ℝ) :
  (a * b * (a^2 - b^2)) + (b * c * (b^2 - c^2)) + (c * a * (c^2 - a^2)) ≤ (9 * real.sqrt 2) / 32 * (a^2 + b^2 + c^2)^2 :=
begin

  have h1 : (a^2 - b^2) + (b^2 - c^2) + (c^2 - a^2) = 0,
  {
    ring
  },
  have h2 : (a * b) + (b * c) + (c * a) = (a + b + c) * (a * b + b * c + c * a) / (a + b + c),
  {
    ring
  },
  have h3 : (a^2 + b^2 + c^2) * ((a^2 + b^2 + c^2) - 1) = (a^2 + b^2 + c^2)^2 - (a^2 + b^2 + c^2),
  {
    ring
  },
  have h4 : 0 ≤ a^2 + b^2 + c^2,
  {
    apply pow_nonneg
  },
  have h5 : (a * b * (a^2 - b^2)) + (b * c * (b^2 - c^2)) + (c * a * (c^2 - a^2)) =
end
