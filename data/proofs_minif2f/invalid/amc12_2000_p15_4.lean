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

  let g : ℂ → ℂ := λ x, x^3 - x^2 - x,
  let h : ℂ → ℂ := λ x, 3x - x - x,
  let I : ℂ → ℂ := λ x, x^3 - 3x + x,
  let J : ℂ → ℂ := λ x, 3x - x - x,
  let K : ℂ → ℂ := λ x, x^3 - x,
  let L : ℂ → ℂ := λ x, x,
  let M : ℂ → ℂ := λ x, x^2 + x + 1,
  let N : ℂ → ℂ := λ x, x^2 - x + 1,
  let P : ℂ → ℂ := λ x, x^3 + x,
  let Q : ℂ → ℂ := λ x, 3x + x + 1,
  let R : ℂ → ℂ := λ x, x^3 - x,
  let S : ℂ → ℂ := λ x, x^2 + x,
  let T : ℂ → ℂ := λ
end
