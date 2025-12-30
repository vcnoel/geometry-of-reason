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

  induction 1 > h₀,
  induction 2 > h₁,
  induction i > 2,
  let g = f^i,
  let g0 = g * 3,
  let g1 = g * 3^2,
  let g2 = g * 3^3,
  let g3 = g * 3^4,
  let g4 = g * 3^5,
  let g5 = g * 3^6,
  let g6 = g * 3^7,
  let g7 = g * 3^8,
  let g8 = g * 3^9,
  let g9 = g * 3^10,
  let g10 = g * 3^11,
  let g11 = g * 3^12,
  let g12 = g * 3^13,
  let g13 = g * 3^14,
  let g14 = g * 3^15,
  let g15 = g * 3^16,
  let g16 = g * 3^17,
  let g17 = g * 3^18,
  let g18 = g * 3^19
end
