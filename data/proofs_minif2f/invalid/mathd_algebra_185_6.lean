import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_185
  (s: finset ℤ)
  (f : ℤ → ℤ)
  (h₀ : ∀ x, f x = abs (x + 4))
  (h₁ : ∀ x, x ∈ s ↔ f x < 9) :
  s.card = 17 :=
begin

  let s' := s.filter (f ∘ id),
  have h₂ : s = s', by { ext1 x, simp [h₁] },
  have h₃ : s'.card = 17, by { ext1 x, simp [h₁] },
  exact h₂ ▸ h₃,

end
