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

  let g : ℂ → ℂ := λ x, f (x / 3),
  let h : ℂ → ℂ := λ x, x^2 + x + 1,
  let i : ℂ → ℂ := λ x, (g(x) - h(x))/9,
  let j : ℂ → ℂ := λ x, - (g(x) - h(x))/9,
  let k : ℂ → ℂ := λ x, (h(x) - i(x))/9,
  let l : ℂ → ℂ := λ x, (h(x) - j(x))/9,
  let m : ℂ → ℂ := λ x, (h(x) - k(x))/9,
  let n : ℂ → ℂ := λ x, (g(x) - l(x))/9,
  let o : ℂ → ℂ := λ x, (g(x) - m(x))/9,
  let p : ℂ → ℂ := λ x, (g(x) - n(x))/9,
  let q : ℂ → ℂ := λ x, (h(x) - o(x))/9,
  let r : ℂ
end
