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

  have h₃ : (n * ((n * (n^(1 / c)))^(1 / b)))^(1 / a) = n^(25 / a) * ((n^(1 / c))^(1 / b))^(1 / a),
  { apply pow_pow,
    rw [pow_mul, mul_pow, pow_pow],
    apply pow_inv,
    rw [pow_mul, mul_pow],
    apply pow_inv,
    apply pow_pow },
  have h₄ : (n^25)^(1 / 36) = n^(25 / 36),
  { apply pow_pow },
  have h₅ : n^(25 / a) * ((n^(1 / c))^(1 / b))^(1 / a) = n^(25 / 36),
  { rw [h₃, h₄] },
  have h₆ : 25 / a = 25 / 36,
  { have h₇ : n ≠ 0,
    { apply ne_of_lt,
      apply h₁.left },
    have h₈ : n^(1 / c) ≠ 0,
    { apply ne_of_lt,
      apply h₁.left },
    have h₉ : ((n^(
end
