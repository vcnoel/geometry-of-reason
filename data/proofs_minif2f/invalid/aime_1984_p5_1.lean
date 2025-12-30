import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem aime_1984_p5
  (a b : ℝ)
  (h₀ : real.logb 8 a + real.logb 4 (b^2) = 5)
  (h₁ : real.logb 8 b + real.logb 4 (a^2) = 7) :
  a * b = 512 :=
begin

  have h₂ : real.logb 8 (a * b) + real.logb 4 (a * b)^2 = 12,
  { rw [← h₀, ← h₁, add_assoc, add_assoc, add_assoc, ← add_assoc],
    exact (add_zero _).symm },
  have h₃ : a * b = 2^12,
  { rw [← h₂, logb_pow, logb_pow],
    exact (add_zero _).symm },
  have h₄ : a * b = 2^12 / 2^12,
  { rw [h₃, pow_sub, pow_zero, pow_zero] },
  have h₅ : a * b = 1,
  { rw [h₄, pow_sub, pow_zero, pow_zero] },
  have h₆ : a * b = 2^12 / (2^12 * 2^12),
  { rw [h₃, pow_add, pow_add, pow_sub, pow_zero, pow_zero] },
  have h₇ : a * b = 1 / 2^12,
  { rw [h₆, div_pow, pow_sub, pow_zero
end
