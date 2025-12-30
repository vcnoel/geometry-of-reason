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

  have h₂ : s.card = ∑ x in s, 1,
  { rw finset.card_eq_sum_one },
  have h₃ : ∀ x in s, f x < 9,
  { intros x hx,
    exact h₁ x hx },
  have h₄ : ∀ x in s, abs (x + 4) < 9,
  { intros x hx,
    have h₅ : x + 4 < 9 ∨ x + 4 ≥ 9,
    { apply or.intro_left, linarith },
    cases h₅ with h₆ h₇,
    { have h₈ : x < 5,
      { apply le_of_lt, linarith },
      have h₉ : f x = abs (x + 4) = x + 4,
      { rw h₀ },
      have h₁₀ : x + 4 < 9,
      { exact h₆ },
      have h₁₁ : f x < 9,
      { exact h₉.symm ▸ h₁₀ },
      exact h₁ x hx },
    { have h₁₂ : x + 4 ≥ 9,
      { exact h₇ },
     
end
