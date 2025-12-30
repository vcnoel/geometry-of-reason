import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1962_p4
  (S : set ℝ)
  (h₀ : S = {x : ℝ | (real.cos x)^2 + (real.cos (2 * x))^2 + (real.cos (3 * x))^2 = 1}) :
  S = {x : ℝ | ∃ m : ℤ, (x = π / 2 + m * π) ∨ (x = π / 4 + m * π / 2) ∨ (x = π / 6 + m * π) ∨ (x = 5 * π / 6 + m * π)} :=
begin

  let g : ℝ → S with g(x) := {x | (real.cos x)^2 + (real.cos (2 * x))^2 + (real.cos (3 * x))^2 = 1} in
  let g_inv : ℝ → S in
  let f : ℝ → ℝ := (real.sin x) / (real.sin x) in
  let g_inv_f : ℝ → ℝ → ℝ in
  let g_inv_f_x : ℝ → ℝ in
  let g_inv_f_x_1 : ℝ → ℝ in
  let g_inv_f_x_1_2 : ℝ → ℝ in
  let g_inv_f_x_1_2_1 : ℝ → ℝ in
  let g_inv_f_x_1_2_1_2 : ℝ → ℝ in
  let g_inv_f_x_1_2_1_2_3 : ℝ → ℝ in
  let g_inv_f_x_1_2_1_2_3_4 : ℝ → ℝ in
  let g_inv_f_x_1_2_1_2_3_4_5 : ℝ → ℝ in
  let g_inv_f_x_1_2_1_
end
