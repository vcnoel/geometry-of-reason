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

  let P : set ℂ → ℂ → set ℂ := λ x, {y in (f⁻¹' {7}).to_finset | y / 3 = x},
  (P x).(f(x / 3)) = x^2 + x + 1,
  (P x).(f(x / 3)) = x^2 + x + 1,
  let g : ℂ → set ℂ := λ x, {y in (f⁻¹' {7}).to_finset | y / 3 = x},
  (g x).(f(x / 3)) = - 1 / 9,
  let g' : ℂ → set ℂ := λ x, {y in (f⁻¹' {7}).to_finset | y / 3 = x},
  (g' x).(f(x / 3)) = - 1 / 9,
  for a in P,
  let g_a : ℂ → set ℂ := λ x, {y in (f⁻¹' {7}).to_finset | y / 3 = a},
  (g_a x).(f(x / 
end
