import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_410
  (x y : ℝ)
  (h₀ : y = x^2 - 6 * x + 13) :
  4 ≤ y :=
begin

  have h₁ : y = (x - 3)^2 + 2,
  { rw h₀ },
  have h₂ : (x - 3)^2 ≥ 0,
  { apply real.pow_nonneg,
    exact real.sub_nonneg,
    exact real.sub_nonneg,
    exact real.sub_nonneg },
  have h₃ : 0 + 2 ≥ 0,
  { refl },
  have h₄ : (x - 3)^2 + 2 ≥ 0,
  { apply add_nonneg,
    exact h₂,
    exact h₃ },
  have h₅ : (x - 3)^2 + 2 ≥ 4,
  { apply add_le,
    exact h₄,
    exact real.of_int 4 },
  have h₆ : y ≥ 4,
  { rw h₁,
    exact h₅ },
  exact h₆,

end
