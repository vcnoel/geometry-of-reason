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

  let P : ℝ → set ℝ
  P (x) := {y : ℝ | ∃ m : ℤ, x = π / 2 + m * π} ∪ {y : ℝ | ∃ m : ℤ, x = π / 4 + m * π / 2} ∪ {y : ℝ | ∃ m : ℤ, x = π / 6 + m * π} ∪ {y : ℝ | ∃ m : ℤ, x = 5 * π / 6 + m * π}
  using imo_1962_p1
  {x, y : ℝ | x ≠ y}
  with {x, y : ℝ | x ≠ y}
  in P
  
end
