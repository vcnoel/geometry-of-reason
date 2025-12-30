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

  let g : ℂ → ℂ × ℂ
  := λ x, (f x) / 3,
  let g_inv : ℂ → ℂ → ℂ
  := λ x, x / 3,
  let p : ℂ → ℂ × ℂ
  := λ x, x^2 + x + 1,
  let p_inv : ℂ → ℂ → ℂ
  := λ x, -x^2 - x - 1,
  let F : ℂ → ℂ
  := λ x, (x + 1) / 3,
  let F_inv : ℂ → ℂ
  := λ x, x / 3,
  let g' : ℂ → ℂ
  := λ x, x / 3,
  let g_inv' : ℂ → ℂ
  := λ x, x / 3,
  let p' : ℂ → ℂ
  := λ x, x^2 + x + 1,
  let p_inv' : ℂ → ℂ
  := λ x, -x^2 - x - 1,
  let F' : ℂ → �
end
