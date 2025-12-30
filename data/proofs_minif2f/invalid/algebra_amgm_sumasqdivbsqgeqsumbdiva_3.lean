import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_amgm_sumasqdivbsqgeqsumbdiva
  (a b c : ℝ)
  (h₀ : 0 < a ∧ 0 < b ∧ 0 < c) :
  a^2 / b^2 + b^2 / c^2 + c^2 / a^2 ≥ b / a + c / b + a / c :=
begin

  -- Rearrange the terms in the inequality
  have h₁ : a^2 / b^2 + b^2 / c^2 + c^2 / a^2 = (a^2 + b^2 + c^2) / (b^2 * c^2 * a^2),
  by {field_simp, ring},
  -- Apply AM-GM inequality on the sum of squares
  have h₂ : (a^2 + b^2 + c^2) / 3 ≥ (√(a^2 * b^2 * c^2))^(1/3),
  by {apply amgm, simp},
  -- Apply AM-GM inequality on the product of the three terms
  have h₃ : (√(a^2 * b^2 * c^2))^(1/3) ≥ (√(b^2 * c^2 * a^2))^(1/3),
  by {apply amgm, simp},
  -- Apply AM-GM inequality on the product of the three terms again
  have h₄ : (√(b^2 * c^2 * a^2))^(1/3) ≥ (b * c
end
