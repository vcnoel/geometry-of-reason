import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1973_p3
  (a b : ℝ)
  (h₀ : ∃ x, x^4 + a * x^3 + b * x^2 + a * x + 1 = 0) :
  4 / 5 ≤ a^2 + b^2 :=
begin

  -- 1st step: We need to show that the polynomial has at least one real root.
  -- 2nd step: We can use Descartes' rule of signs to show that the polynomial has at most one real root.
  -- 3rd step: We need to show that the polynomial has no complex roots.
  -- 4th step: We can use the fact that the polynomial has no complex roots to show that it has at most two real roots.
  -- 5th step: We can use the fact that the polynomial has at most two real roots to show that the polynomial has a double root.
  -- 6th step: We can use the fact that the polynomial has a double root to show that a^2 + b^2 ≥ 4/5.

  -- Step 1: We need to show that the polynomial has at least one real root.
  have h₁ : ∃ x, (x^4 + a * x^3 + b * x^2 + a * x + 1)^2 = 0,
    by simpa only [pow_two, eq_self_iff_true, exists_true] using h₀,
  have h₂ : ∃ x, x^4
end
