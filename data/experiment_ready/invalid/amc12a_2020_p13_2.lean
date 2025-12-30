import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2020_p13
  (a b c : ℕ)
  (n : nnreal)
  (h₀ : n ≠ 1)
  (h₁ : 1 < a ∧ 1 < b ∧ 1 < c)
  (h₂ : (n * ((n * (n^(1 / c)))^(1 / b)))^(1 / a) = (n^25)^(1 / 36)) :
  b = 3 :=
begin

  have h₃ : n ≠ 0,
  by { rintro rfl, exact h₀ rfl },
  have h₄ : a ≠ 1,
  by { rintro rfl, exact h₁.left },
  have h₅ : b ≠ 1,
  by { rintro rfl, exact h₁.middle },
  have h₆ : c ≠ 1,
  by { rintro rfl, exact h₁.right },
  have h₇ : a = 36,
  by {
    have h₈ : (n * ((n * (n^(1 / c)))^(1 / b)))^(1 / a) = n^(-1/36),
    by { rw h₂, rw pow_inv },
    have h₉ : n^(-1/36) = n^25,
    by { rw h₈, rw h₇, rw pow_eq_pow_eq },
    have h₁₀ : 25 = -1/36,
    by { rw h₉, rw h₃, rw pow_eq_one },
    have h₁₁ : 25 * 36 = -1,
    by { rw h₁₀, rw mul_comm },
    have h₁₂ : 900
end
