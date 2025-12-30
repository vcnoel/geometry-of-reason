import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_149
  (f : ℝ → ℝ)
  (h₀ : ∀ x < -5, f x = x^2 + 5)
  (h₁ : ∀ x ≥ -5, f x = 3 * x -8)
  (h₂ : fintype (f⁻¹' {10})) :
  ∑ k in (f⁻¹' {10}).to_finset, k = 6 :=
begin

  rw fintype.sum_congr rfl,
  refine (f⁻¹' {10}).to_finset.sum (λ x hx, _),
  simp only [mem_to_finset, mem_preimage, set.mem_set_of_eq],
  refine λ x hx, _,
  cases hx with hx hx,
  { have : x = 10, from hx,
    simp only [this, h₁, *] at hx,
    have : x = -2, from hx,
    simp only [this, h₀, *] at hx,
    simp only [hx, 10^2 + 5 = 105, 3 * (-2) - 8 = -14, 105 = 14 + 91, 91 = 14 * 6 + 7] },
  { have : x = 10, from hx,
    simp only [this, h₁, *] at hx,
    have : x = -2, from hx,
    simp only [this, h₀, *] at hx,
    simp only [hx, 10^2 + 5 = 105, 3 * (-2) - 8 = -14, 105 = 14 + 
end
