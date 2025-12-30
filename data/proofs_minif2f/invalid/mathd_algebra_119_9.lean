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

  have h₂ : d = 17 * e - 8,
  by {rw h₀},
  have h₃ : d = e - 9,
  by {rw h₁},
  have h₄ : 17 * e - 8 = e - 9,
  by {rw h₂, rw h₃},
  have h₅ : 17 * e = e - 1,
  by {rw add_left_neg (-8) at h₄},
  have h₆ : 16 * e = -1,
  by {rw mul_one at h₅},
  have h₇ : e = -1/16,
  by {rw div_neg_one at h₆},
  have h₈ : e = 2,
  by {rw neg_div_neg at h₇},
  exact h₈,

end
