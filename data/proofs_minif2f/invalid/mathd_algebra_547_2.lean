import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_547
  (x y : ℝ)
  (h₀ : x = 5)
  (h₁ : y = 2) :
  real.sqrt (x^3 - 2^y) = 11 :=
begin

  have h₂ : 2^y = 4 := by { rw [h₁], refl },
  have h₃ : x^3 = 125 := by { rw [h₀], refl },
  have h₄ : 125 - 4 = 121 := by { refl },
  have h₅ : real.sqrt 121 = 11 := by { refl },
  have h₆ : real.sqrt (x^3 - 2^y) = real.sqrt 121 := by { rw [h₄, h₃, h₂] },
  exact h₅.trans h₆,

end
