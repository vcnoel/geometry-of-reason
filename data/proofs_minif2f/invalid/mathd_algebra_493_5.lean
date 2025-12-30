import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_493
  (f : ℝ → ℝ)
  (h₀ : ∀ x, f x = x^2 - 4 * real.sqrt x + 1) :
  f (f 4) = 70 :=
begin

  apply congr_arg,
  apply h₀,
  apply h₀,

end
