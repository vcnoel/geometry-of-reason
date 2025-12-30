import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_2006_p6
  (a b c : ℝ) :
  (a * b * (a^2 - b^2)) + (b * c * (b^2 - c^2)) + (c * a * (c^2 - a^2)) ≤ (9 * real.sqrt 2) / 32 * (a^2 + b^2 + c^2)^2 :=
begin

  have h1 : a^2 - b^2 = (a - b) * (a + b),
  by {simp},
  have h2 : b^2 - c^2 = (b - c) * (b + c),
  by {simp},
  have h3 : c^2 - a^2 = (c - a) * (c + a),
  by {simp},
  have h4 : (a - b) * (a + b) * a * b + (b - c) * (b + c) * b * c + (c - a) * (c + a) * c * a ≤
    ((a + b)^2 * a * b + (b + c)^2 * b * c + (c + a)^2 * c * a),
  by {linarith},
  have h5 : (a + b)^2 * a * b + (b + c)^2 * b * c + (c + a)^2 * c * a ≤
    ((a^2 + b^2 + c^2) * (a + b) * (b + c) * (c + a)),
  by {lin
end
