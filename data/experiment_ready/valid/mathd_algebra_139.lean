import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_139
  (s : ℝ → ℝ → ℝ)
  (h₀ : ∀ x≠0, ∀y≠0, s x y = (1/y - 1/x) / (x-y)) :
  s 3 11 = 1/33 :=
begin
  norm_num [h₀],
end