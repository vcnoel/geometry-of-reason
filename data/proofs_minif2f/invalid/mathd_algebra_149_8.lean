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

  let s : finset ℝ := (f⁻¹' {10}).to_finset,
  have h₃ : s.card = fintype.card (f⁻¹' {10}), by simp [s],
  have h₄ : ∀ x ∈ s, f x = 10, by { intros x hx, exact mem_preimage.mp hx },
  have h₅ : ∀ x ∈ s, x ≥ -5, by { intros x hx, exact mem_preimage.mp hx },
  have h₆ : ∀ x ∈ s, x^2 + 5 = 10, by { intros x hx, exact eq.trans (h₀ x) (h₄ x) },
  have h₇ : ∀ x ∈ s, x = -5 ∨ x = 4, by { intros x hx, rw h₆ at hx, simp [hx] },
  have h₈ : ∑ k in s, k = (∑ k in s, k.1) + (∑ k in s, k.2),
    by { rw finset.sum_add, refl },
  have h₉ : (∑ k in s, k.1) + (∑ k in s, k
end
