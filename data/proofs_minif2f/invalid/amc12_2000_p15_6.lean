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

  let g : ℂ → ℂ := λ x, x^3 - 2x^2 + 7x - 1;
  let i : ℂ → ℂ := λ x, x^3 - 2x^2 + 7x - 1;
  let j : ℂ → ℂ := λ x, x^3 - 2x^2 + 7x + 1;
  let k : ℂ → ℂ := λ x, x^3 + 2x^2 + 7x + 1;

  let g0 : ℂ → ℂ := λ x, x^3 - 2x^2 + 7x + 1;
  let g1 : ℂ → ℂ := λ x, x^3 - 2x^2 + 7x - 1;
  let g2 : ℂ → ℂ := λ x, x^3 + 2x^2 + 7x - 1;
  let g3 : ℂ → ℂ := λ x, x^3 + 2x^2 + 7x + 1;

  let g4 : ℂ → ℂ := λ
end
