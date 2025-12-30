import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2002_p12
  (f : ℝ → ℝ)
  (k : ℝ)
  (h₀ : ∀ x, f x = x^2 - 63 * x + k)
  (h₁ : set.subset (f ⁻¹' {0}) {x : ℝ | ∃ n : ℕ, ↑n = x ∧ nat.prime n}) :
  k = 122 :=
begin

  sorry

end
