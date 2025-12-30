import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_480
  (f : ℝ → ℝ)
  (h₀ : ∀ x < 0, f x = -(x^2) - 1)
  (h₁ : ∀ x, 0 ≤ x ∧ x < 4 → f x = 2)
  (h₂ : ∀ x ≥ 4, f x = real.sqrt x) :
  f π = 2 :=
begin

  have h₃ : π < 4,
  { have h₄ : π = 3.1415926535897932384626433832795028841971693993751058209749445923078164062862089986280348253421170679,
    { exact dec_trivial },
    have h₅ : 3.1415926535897932384626433832795028841971693993751058209749445923078164062862089986280348253421170679 < 4,
    { exact dec_trivial },
    exact h₅ },
  have h₆ : 0 ≤ π,
  { have h₇ : 0 ≤ 3.1415926535897932384626433832795028841971693993751058209749445923078164062862089986280348253421170679,
    { exact dec_trivial },
    exact h₇ },
  exact h₁ (π) (and.intro h₆ h₃),

end
