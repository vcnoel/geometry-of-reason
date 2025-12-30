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

  have h₂ : ∀ x, x ∈ s → f x = 5,
  { intros x hx,
    have h₃ : f x = abs (x + 4),
    { exact h₀ x },
    have h₄ : abs (x + 4) = 5,
    { have h₅ : x + 4 = 5,
      { rw [h₁ x hx] at h₅,
        exact h₅ },
      have h₆ : abs (x + 4) = 5,
      { rw [h₅] at h₆,
        exact h₆ },
      exact h₆ },
    have h₇ : f x = 5,
    { exact h₄ },
    exact h₇ },
  have h₈ : s.card = ∑ x in s, 1,
  { have h₉ : ∀ x, x ∈ s → 1 = 1,
    { intros x hx,
      exact rfl },
    have h₁₀ : s.card = ∑ x in s, 1,
    { exact h₉ },
    exact h₁₀ },
  have h₁₁ : s.card = ∑ x
end
