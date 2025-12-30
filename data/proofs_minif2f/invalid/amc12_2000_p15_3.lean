import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12_2000_p15
  (f : ℂ → ℂ)
  (h₀ : ∀ x, f (x / 3) = x^2 + x + 1)
  (h₁ : fintype (f ⁻¹' {7})) :
  ∑ y in (f⁻¹' {7}).to_finset, y / 3 = - 1 / 9 :=
begin

  let A : ℝ → ℝ := λ x, x^3 / 27 + x^2 / 3 + x / 3;
  let B : ℝ → ℝ := λ x, x^3 / 27 - x^2 / 3 + x / 3;
  let C : ℝ → ℝ := λ x, x^3 / 27 - x^2 / 3 - x / 3;
  let D : ℝ → ℝ := λ x, x^3 / 27 + x^2 / 3 - x / 3;
  let E : ℝ → ℝ := λ x, x^3 / 27 - x^2 / 3 + x / 3;
  let F : ℝ → ℝ := λ x, x^3 / 27 + x^2 / 3 - x / 3;
  let G : ℝ → ℝ := λ x, x^3 / 27 - x^2 / 3 + x / 3;
  let H : ℝ → ℝ := λ x, x^3 / 27 + x^2 / 3 - x / 3;
  let I : ℝ → ℝ := λ x, x^3 / 
end
