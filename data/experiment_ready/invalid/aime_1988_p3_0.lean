import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem aime_1988_p3
  (x : ℝ)
  (h₀ : 0 < x)
  (h₁ : real.logb 2 (real.logb 8 x) = real.logb 8 (real.logb 2 x)) :
  (real.logb 2 x)^2 = 27 :=
begin

  apply minif2f_import.lean_theorem
    (fun _ => 0 < real.logb 2 x) (fun _ => real.logb 8 x) (fun _ => real.logb 2 x),
  apply minif2f_import.lean_theorem
    (fun _ => 0 < real.logb 2 x) (fun _ => real.logb 8 x) (fun _ => real.logb 8 x),
  apply minif2f_import.lean_theorem
    (fun _ => 0 < real.logb 2 x) (fun _ => real.logb 8 x) (fun _ => real.logb 8 x),
  congruence.rhs (real.logb 2 x)^2,
  congruence.rhs (real.logb 2 x)^2,
  congruence.rhs (real.logb 2 x)^2,
  congruence.rhs (real.logb 2 x)^2,
  congruence.rhs (real.logb 2 x)^2,
  congruence.rhs (real.logb 2 x)^2,
  congruence.rhs (real.logb 2 x
end
