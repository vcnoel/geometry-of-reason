import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_48
  (q e : ℂ)
  (h₀ : q = 9 - 4 * complex.I)
  (h₁ : e = -3 - 4 * complex.I) : q - e = 12 :=
begin

  rw [h₀, h₁],
  simp,
  ring,

end
