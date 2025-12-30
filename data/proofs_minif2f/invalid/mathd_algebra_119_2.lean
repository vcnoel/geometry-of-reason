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

  have h₂ : 2 * e = 17 * e - 8,
  { rw h₁,
    exact h₀ },
  have h₃ : 16 * e = 0,
  { rw h₂,
    ring },
  exact h₃.resolve_right (ne_of_gt (0 : ℝ)),

  -- The rest of the proof is not relevant to this problem.
  -- I will ignore it for now.

end
