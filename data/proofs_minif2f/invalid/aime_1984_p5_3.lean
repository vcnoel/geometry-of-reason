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

  have h₂ := h₀.add h₁,
  have h₃ : real.logb 8 (a * b) + real.logb 4 ((a * b)^2) = 12,
  { rw [h₂],
    rw [mul_logb, mul_pow],
    exact pow_add 2 2 12 },
  have h₄ : real.logb 8 (a * b) + real.logb 2 ((a * b)^2) = 12,
  { rw [pow_two, mul_pow],
    exact h₃ },
  have h₅ : real.logb 8 (a * b) = 12,
  { have h₆ : (a * b)^2 = 2^12,
    { rw [h₄],
      exact pow_eq_one 2 12 },
    have h₇ : a * b = 2^6,
    { have h₈ : a * b = 2^(12/2),
      { rw [h₆],
        exact pow_half },
      exact h₈ },
    exact h₇ },
  have h₉ : a * b = 512,
  { rw [h₅],
   
end
