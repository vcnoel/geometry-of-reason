import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_141
  (a b : ℝ)
  (h₁ : (a * b)=180)
  (h₂ : 2 * (a + b)=54) :
  (a^2 + b^2) = 369 :=
begin
  replace h₂ : (a + b) = 27 , linarith,
  have h₃ : a^2 + b^2 = (a + b)^2 - 2 * (a * b), by ring,
  rw [h₃, h₂, h₁],
  norm_num,
end