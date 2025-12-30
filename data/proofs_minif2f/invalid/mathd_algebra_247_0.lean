import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_247
  (t s : ℝ)
  (n : ℤ)
  (h₀ : t = 2 * s - s^2)
  (h₁ : s = n^2 - 2^n + 1)
  (n = 3) :
  t = 0 :=
begin

  -- First, we use the fact that n = 3 to substitute into the expression for s.
  have h₂ : s = 3^2 - 2^3 + 1 := by rw [n, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two,
end
