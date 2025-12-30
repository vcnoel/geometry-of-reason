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

  have h₂ : ∀ x, x ∈ s ↔ abs (x + 4) < 9,
  { intros x,
    split,
    { intro h,
      have h₃ := h₁ x,
      have h₄ := h₃.symm h,
      have h₅ := h₀ x,
      have h₆ := h₄.trans h₅,
      exact h₆,
    },
    { intro h,
      have h₃ := h₀ x,
      have h₄ := h₃.symm h,
      have h₅ := h₄.trans h₁ x,
      exact h₅,
    },
  },
  have h₃ : s.card = finset.filter (λ x, abs (x + 4) < 9) s.card,
  { rw h₂,
    rw finset.card_filter_eq,
  },
  have h₄ : (λ x, abs (x + 4) < 9) = (λ x, abs x < 5),
  { intro x,
    split,
    { intro h,
      have h₃ := h₁ x,
      have h₄ := h₃.symm h,
      have h₅ :=
end
