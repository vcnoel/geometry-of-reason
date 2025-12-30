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

  have h₁ : x^2 - 6*x + 13 = x^2 + (13 - 6 * x),
  by { rw [add_comm] },
  have h₂ : x^2 + (13 - 6 * x) = (x - 3)^2 + 4,
  by { have h₃ : x - 3 = x - 3, by { refl },
      rw [h₃, pow2, add_comm, add_sub_assoc, add_sub_cancel, add_sub_assoc, add_sub_cancel] },
  have h₃ : 0 ≤ (x - 3)^2,
  by { have h₄ : x - 3 = x - 3, by { refl },
      rw [h₄, pow_nonneg, zero_le_sub] },
  have h₄ : 4 ≤ (x - 3)^2 + 4,
  by { have h₅ : 0 ≤ 4, by { refl },
      have h₆ : 4 ≤ (x - 3)^2 + 4,
      by { have h₇ : 4 = 4 + 0, by { refl },
          have h₈ : (
end
