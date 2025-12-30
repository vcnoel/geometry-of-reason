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

  let t := { x | x^2 + 4 * x + 4 < 20 },
  let s := { x | 0 < x ∧ x^2 + 4 * x + 4 < 20 },
  have h₁ : s = t,
  { ext1 x,
    split,
    { intro h,
      cases h with h₁ h₂,
      { exact h₁ },
      { exact h₂ },
    },
    { intro h,
      split,
      { exact h.left },
      { exact h.right },
    },
  },
  have h₂ : s ⊆ t,
  { intro x,
    apply h₁,
    exact x,
  },
  have h₃ : s = ∅,
  { have h₄ : ∀ x, x ∈ s → x ∈ t,
    { intro x,
      intro h,
      exact h,
    },
    have h₅ : s ⊆ t,
    { intro x,
      exact h₄ x,
    },
    have h₆ : t ⊆ s,
    { intro x,
      cases h₁ x with h₇ h₈,
      { exact h₈ },
      { exact h₇ },

end
