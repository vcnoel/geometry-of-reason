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

  have h₂ : s = 3^2 - 2^3 + 1 := by {rw n, exact h₁},
  have h₃ : s = 7 := by {rw h₂, exact rfl},
  have h₄ : t = 2 * 7 - 7^2 := by {rw h₀, exact rfl},
  have h₅ : t = 2 * 7 - 49 := by {rw h₄, exact rfl},
  have h₆ : t = -41 := by {rw h₅, exact rfl},
  exact h₆,

end
