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

  have h₂ : ∀ x, x ∈ s → f x < 9,
  { intro x,
    intro hx,
    exact h₁ x hx, },
  have h₃ : ∀ x, x ∈ s → abs (x + 4) < 9,
  { intro x,
    intro hx,
    apply h₂ x hx, },
  have h₄ : ∀ x, x ∈ s → x + 4 < 9,
  { intro x,
    intro hx,
    apply h₃ x hx, },
  have h₅ : ∀ x, x ∈ s → x < 5,
  { intro x,
    intro hx,
    apply h₄ x hx, },
  have h₆ : ∀ x, x ∈ s → x ∈ {x | x < 5},
  { intro x,
    intro hx,
    exact h₅ x hx, },
  have h₇ : s ⊆ {x | x < 5},
  { exact subset_of_forall (h₆ : ∀ x, x ∈ s → x ∈ {x | x < 5}), },
  have h₈ : s ⊆ {0, 1, 2, 
end
