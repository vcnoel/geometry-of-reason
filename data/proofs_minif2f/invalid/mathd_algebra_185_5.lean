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

  have h₂ : ∀ x, f x < 9,
  { intro x,
    have h₃ : f x = abs (x + 4),
    { exact h₀ x },
    have h₄ : abs (x + 4) < 9,
    { apply abs_lt, linarith },
    exact h₄ },
  have h₅ : ∀ x, x ∈ s → f x < 9,
  { intros x hx,
    exact h₂ x },
  have h₆ : ∀ x, x ∈ s → x + 4 < 9,
  { intros x hx,
    have h₇ : f x < 9,
    { exact h₅ x hx },
    have h₈ : abs (x + 4) < 9,
    { exact h₇ },
    have h₉ : x + 4 < 9,
    { apply abs_lt, linarith },
    exact h₉ },
  have h₁₀ : ∀ x, x ∈ s → x ∈ ({-5..8}),
  { intros x hx,
    have h₁₁ : x + 4 < 9,
    { exact h₆ x hx },
   
end
