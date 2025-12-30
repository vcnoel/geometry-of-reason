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

  simp at h₀ h₁,
  rw h₀,
  rw h₁,
  calc
  9 - 4 * complex.I - (-3 - 4 * complex.I) = 9 - 4 * complex.I + 3 + 4 * complex.I : by ring_nf
 ... = 12 : by ring_nf,

end
