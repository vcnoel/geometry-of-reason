import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_405
  (S : finset ℕ)
  (h₀ : ∀ x, x ∈ S ↔ 0 < x ∧ x^2 + 4 * x + 4 < 20) :
  S.card = 2 :=
begin

  refine finset.card_congr (finset.map (λ x, x^2 + 4 * x + 4) S) _,
  { simp only [finset.map_map, finset.map_id],
    exact finset.injective (λ x y h, h₀ x (h.1).1 h.1.2) },
  { refine finset.ext _,
    intros x hx,
    simp only [finset.mem_map, exists_prop] at hx,
    cases hx with y hy,
    { refine ⟨y, _⟩,
      simp only [finset.mem_map, finset.mem_finset] at hy,
      cases hy with h₁ h₂,
      { exact h₀ y h₁ h₂ },
      { exact h₀ y (by linarith) (by linarith) } },
    { refine ⟨y, _⟩,
      simp only [finset.mem_map, finset.mem_finset] at hy,
      cases hy with h₁ h₂,
      { exact h₀ y (by linarith) (by linarith) },
      { exact h₀ y h₁ h₂ } } },
  { refine finset.ext _,
    intros x hx,
    simp only
end
