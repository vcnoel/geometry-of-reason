import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_sqineq_2unitcircatblt1
  (a b : ℝ)
  (h₀ : a^2 + b^2 = 2) :
  a * b ≤ 1 :=
begin
  have hu := sq_nonneg a,
  have hv := sq_nonneg b,
  have H₁ := add_nonneg hu hv,
  have H₂ : 0 ≤ (a - b) ^ 2 := by nlinarith,
  nlinarith,
end