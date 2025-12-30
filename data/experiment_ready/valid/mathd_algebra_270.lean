import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_270
  (f : ℝ → ℝ)
  (h₀ : ∀ x ≠ -2, f x = 1 / (x + 2)) :
  f (f 1) = 3/7 :=
begin
  rw [h₀, h₀],
  norm_num,
  linarith,
  rw h₀,
  norm_num,
  linarith,
end