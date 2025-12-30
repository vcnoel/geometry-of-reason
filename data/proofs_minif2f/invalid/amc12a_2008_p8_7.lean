import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2008_p8
  (x y : ℝ)
  (h₀ : 0 < x ∧ 0 < y)
  (h₁ : y^3 = 1)
  (h₂ : 6 * x^2 = 2 * (6 * y^2)) :
  x^3 = 2 * real.sqrt 2 :=
begin

  apply eq.trans x ^ 3 = (2 * real.sqrt 2) ^ 3,
  { apply eq.refl },
  { have h₃ := pow_eq_one h₁,
    apply eq.subst h₃,
    have h₄ := pow_eq_pow h₂ 1/2,
    apply eq.trans h₄,
    { have h₅ := mul_assoc 2 (real.sqrt 2) (real.sqrt 2),
      have h₆ := mul_comm (real.sqrt 2) (real.sqrt 2),
      apply eq.trans h₆,
      have h₇ := mul_comm 2 (real.sqrt 2),
      have h₈ := mul_one 2 (real.sqrt 2),
      apply eq.trans h₇,
      apply eq.trans h₈,
      have h₉ := mul_eq_mul_right (real.sqrt 2) (real.sqrt 2),
      apply eq.subst h₉,
      have h₁₀ := real.sqrt_eq_real_sqrt (real.sqrt 2) (real.sqrt 2),
      apply eq.subst h₁₀,
      have h₁₁ := real.sqrt_pos (real.sqrt 2),
      apply eq.trans h₁₁
end
