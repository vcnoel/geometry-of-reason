import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_433
  (f : ℝ → ℝ)
  (h₀ : ∀ x, f x = 3 * real.sqrt (2 * x - 7) - 8) :
  f 8 = 1 :=
begin

  apply h₀,
  { rw h₀,
    ring,
    refl, },

end
