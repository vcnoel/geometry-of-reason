import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12b_2004_p3
  (x y : ℕ)
  (h₀ : 2^x * 3^y = 1296) :
  x + y = 8 :=
begin

  have h₁ : x ≥ 0 ∧ y ≥ 0,
  from and.intro
    (le_of_eq (pow_zero 2))
    (le_of_eq (pow_zero 3)),

  have h₂ : x > 0 ∧ y > 0,
  from and.intro
    (lt_of_le_of_ne (pow_pos (ne_of_gt h₀) 0) (pow_zero 2))
    (lt_of_le_of_ne (pow_pos (ne_of_gt h₀) 0) (pow_zero 3)),

  have h₃ : 2^x * 3^y = 2^6 * 3^2,
  from eq_of_mul_eq_mul_left (pow_pos (ne_of_gt h₀) 0) (pow_pos (ne_of_gt h₀) 0) h₀,

  have h₄ : x = 6 ∧ y = 2,
  from and.intro
    (eq_of_pow_eq_pow_left (ne_of_gt h₂.left) h₃)
    (eq_of_pow_eq_pow_left (ne_of_gt h₂.right) h₃),

  have h₅ : x + y = 8,
  from add_eq_of_eq
end
