import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_51
  (a b : ℝ)
  (h₀ : 0 < a ∧ 0 < b)
  (h₁ : a + b = 35)
  (h₂ : a = (2/5) * b) :
  b - a = 15 :=
begin

  rw h₂ at h₁,
  rw h₂,
  have h₃ : 2 * a = 7 * b,
  { rw h₂,
    rw h₁,
    ring },
  have h₄ : a = (7/10) * b,
  { rw h₃,
    ring },
  have h₅ : b - a = (3/10) * b,
  { rw h₄,
    ring },
  have h₆ : b - a = 3 * (5/10) * b,
  { rw h₅,
    ring },
  have h₇ : b - a = 3 * (1/2) * b,
  { rw h₆,
    ring },
  have h₈ : b - a = (3/2) * b,
  { rw h₇,
    ring },
  have h₉ : b - a = 15,
  { rw h₈,
    ring },
  exact h₉,

end
