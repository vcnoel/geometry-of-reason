import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem aimeII_2020_p6
  (t : ℕ → ℚ)
  (h₀ : t 1 = 20)
  (h₁ : t 2 = 21)
  (h₂ : ∀ n ≥ 3, t n = (5 * t (n - 1) + 1) / (25 * t (n - 2))) :
  ↑(t 2020).denom + (t 2020).num = 626 :=
begin

  have t3 := h₂ 3,
  have t4 := h₂ 4,
  have t5 := h₂ 5,
  have t6 := h₂ 6,
  have t7 := h₂ 7,
  have t8 := h₂ 8,
  have t9 := h₂ 9,
  have t10 := h₂ 10,
  have t11 := h₂ 11,
  have t12 := h₂ 12,
  have t13 := h₂ 13,
  have t14 := h₂ 14,
  have t15 := h₂ 15,
  have t16 := h₂ 16,
  have t17 := h₂ 17,
  have t18 := h₂ 18,
  have t19 := h₂ 19,
  have t20 := h₂ 20,
  have t21 := h₂ 21,
  have t22 := h₂ 22,
  have t23 := h₂ 23,
  have t24 := h₂ 24,
  have t25 := h₂ 25,
  have t26 := h₂ 26,
  have t27 := h₂ 27,
  have t28 := h
end
