import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2015_p10
  (x y : ℤ)
  (h₀ : 0 < y)
  (h₁ : y < x)
  (h₂ : x + y + (x * y) = 80) :
  x = 26 :=
begin

  have h₃ : y ≠ 0,
  { assume h₃,
    have h₄ : 80 = x * (x + 1),
    { rw h₂,
      rw mul_add,
      rw add_comm,
      rw mul_comm,
      rw add_assoc,
      rw mul_assoc,
      rw mul_add,
      rw h₁,
      rw h₀ },
    have h₅ : x + 1 ≠ 0,
    { assume h₅,
      have h₆ : x = -1,
      { rw h₄,
        rw h₅,
        rw mul_one,
        rw add_zero,
        rw eq_comm,
        rw eq_comm,
        rw eq_comm },
      have h₇ : y = 0,
      { rw h₄,
        rw h₆,
        rw add_one,
        rw mul_one,
        rw add_zero,
        rw eq_comm,
        rw eq_comm },
      have h₈ : y < 0,
      { rw h₇,
        rw h₀ },
      have h₉ : False,
      { exact h₈ },
      exact h₉ },
    have h₁₀ : x + 1 ≠ 0,

end
