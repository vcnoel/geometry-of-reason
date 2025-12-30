import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_119
  (d e : ℝ)
  (h₀ : 2 * d = 17 * e - 8)
  (h₁ : 2 * e = d - 9) :
  e = 2 :=
begin

  have h₂ : d - e = 8,
  { rw h₁,
    rw h₀,
    ring },
  have h₃ : d = 8 + e,
  { rw h₂ },
  have h₄ : e = 2,
  { rw h₁,
    rw h₃,
    ring },
  exact h₄,

end
