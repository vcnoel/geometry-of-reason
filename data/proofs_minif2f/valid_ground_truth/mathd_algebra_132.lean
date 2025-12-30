import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_132
  (x : ℝ)
  (f g : ℝ → ℝ)
  (h₀ : ∀ x, f x = x + 2)
  (h₁ : ∀ x, g x = x^2)
  (h₂ : f (g x) = g (f x)) :
  x = - 1/2 :=
begin
  norm_num,
  simp [*, -one_div] at *,
  field_simp [h₁],
  linarith,
end