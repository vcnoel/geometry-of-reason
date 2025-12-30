import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_455
  (x : ℝ)
  (h₀ : 2 * (2 * (2 * (2 * x))) = 48) :
  x = 3 :=
begin

  have h₁ : 2 * (2 * (2 * (2 * x))) = 48 := h₀,
  have h₂ : 2 * (2 * (2 * x)) = 12 := by { rw h₁, ring },
  have h₃ : 2 * (2 * x) = 6 := by { rw h₂, ring },
  have h₄ : 2 * x = 3 := by { rw h₃, ring },
  have h₅ : x = 3/2 := by { rw h₄, ring },
  exact h₅,

end
