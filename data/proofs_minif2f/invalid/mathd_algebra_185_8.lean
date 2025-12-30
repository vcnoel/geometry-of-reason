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

  apply finset.card_congr,
  apply finset.ext,
  intro x,
  apply Iff.intro,
  { intro h,
    apply h₁,
    apply h },
  { intro h,
    apply h₁,
    apply h },

end
