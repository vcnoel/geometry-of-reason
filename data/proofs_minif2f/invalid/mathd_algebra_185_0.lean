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

  have h₂ : s.card = card (s.filter (λ x, f x < 9)),
  { rw finset.card_filter },
  have h₃ : s.filter (λ x, f x < 9) = { -9, -6, -3, 0, 3, 6, 9 },
  { have h₄ : ∀ x, f x < 9 → x ∈ s,
    { intros x hx,
      exact h₁ x hx },
    have h₅ : ∀ x, f x < 9 → x ∈ { -9, -6, -3, 0, 3, 6, 9 },
    { intros x hx,
      exact h₄ x hx },
    have h₆ : s.filter (λ x, f x < 9) ⊆ { -9, -6, -3, 0, 3, 6, 9 },
    { intros x hx,
      exact h₅ x hx },
    have h₇ : { -9, -6, -3, 0, 3, 6, 9 } ⊆ s.filter (λ x, f x < 9),
    {
end
