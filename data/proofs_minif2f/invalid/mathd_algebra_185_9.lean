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

  have h₂ : ∀ x, x ∈ s ↔ f x = 8,
  { intro x,
    split,
    { intro h₃,
      apply h₁,
      exact h₃ },
    { intro h₃,
      apply h₁,
      exact h₃ } },
  have h₃ : ∀ x, x ∈ s → f x = 8,
  { intros x h₃,
    exact h₂.mp h₃ },
  have h₄ : ∀ x, x ∈ s → x = -4,
  { intros x h₃,
    have h₅ : f x = abs (x + 4),
    { exact h₀ },
    have h₆ : f x = 8,
    { exact h₃ },
    have h₇ : abs (x + 4) = 8,
    { exact h₆ },
    have h₈ : x + 4 = 8,
    { exact h₇ },
    have h₉ : x = 4,
    { exact h₈ },
    have h₁₀ : x = -4,
    { exact h₉ },
    exact h₁₀ },
  have h₁₁ : ∀ x, x ∈ s
end
