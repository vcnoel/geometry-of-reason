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

  let G = f⁻¹' {7}, A = {x | x / 3 ∈ G}, B = {x | x / 3 ∈ A},
  let c = {x | x / 3 ∈ B} ∩ {x | x / 3 ∈ A} ∩ {x | x / 3 ∈ B} ∩ {x | x / 3 ∈ A},
  let f_c = f|_c,
  let Gc = f⁻¹' {7} ∩ A,
  let Ac = {x | x / 3 ∈ Gc},
  let Bc = {x | x / 3 ∈ Bc},
  let c_c = {x | x / 3 ∈ c} ∩ {x | x / 3 ∈ Bc} ∩ {x | x / 3 ∈ Bc},
  let f_c_c = f|_c_c,
  let Gc_c = f⁻¹' {7} ∩ Ac,
  let Ac_c = {x | x / 3 ∈ Ac} ∩ {x | x / 3 ∈ Ac_c} ∩ {x | x / 3 ∈ Ac},
 
end
