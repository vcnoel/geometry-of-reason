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

  let f : ℝ → ℝ := λ x, if x = π / 2 + m * π then 0 else if x = π / 4 + m * π then 1 else if x = π / 6 + m * π then 2 else if x = 5 * π / 6 + m * π then 3 then 1, else 0
  then let g : ℝ → ℝ := λ x, (real.cos x) / (real.cos (x - π / 2)) using f,
  then let h : ℝ → ℝ := λ x, if x = π / 2 + m * π then 0 else if x = π / 4 + m * π then 1 else if x = π / 6 + m * π then 2 else if x = 5 * π / 6 + m * π then 3 then 1, else 0
  then let i : ℝ → ℝ := λ x, (real.cos x) / (real.cos (x - π / 4)) using g,
  then let j : ℝ → ℝ := λ x, (real.cos x) / (real.cos (x - π / 6))
end
