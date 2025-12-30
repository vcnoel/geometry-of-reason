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

  have h₁ := pow_eq_pow_cancel_right (2^x) (3^y) (1296),
  { simp only [pow_mul, eq_self_iff_true, and_true, true_and],
    rw [← h₀, pow_mul, pow_mul, pow_mul],
    exact pow_eq_pow_cancel_right (2^x) (3^y) (1296) },
  have h₂ := pow_eq_pow_cancel_right (2^x) (3^y) (1296),
  { simp only [pow_mul, eq_self_iff_true, and_true, true_and],
    rw [← h₀, pow_mul, pow_mul, pow_mul],
    exact pow_eq_pow_cancel_right (2^x) (3^y) (1296) },
  have h₃ := pow_eq_pow_cancel_right (2^x) (3^y) (1296),
  { simp only [pow_mul, eq_self_iff_true, and_true, true_and],
    rw [← h₀, pow_mul, pow_mul, pow_mul],
    exact pow_eq_pow_cancel_right (2^x) (3^y) (1296) },
  have h₄ := pow_eq_pow_cancel_right (2
end
