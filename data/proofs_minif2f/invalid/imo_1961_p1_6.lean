import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1961_p1
  (x y z a b : ℝ)
  (h₀ : 0 < x ∧ 0 < y ∧ 0 < z)
  (h₁ : x ≠ y)
  (h₂ : y ≠ z)
  (h₃ : z ≠ x)
  (h₄ : x + y + z = a)
  (h₅ : x^2 + y^2 + z^2 = b^2)
  (h₆ : x * y = z^2) :
  0 < a ∧ b^2 < a^2 ∧ a^2 < 3 * b^2 :=
begin

  -- We can rewrite the third equation using the first equation
  have h₇ : y = (z^2) / x,
  from eq_subst (eq_subst h₆ (inv_mul x z^2)) (eq_subst (add_sub_cancel (a - x) x) (eq_subst (add_sub_cancel (a - y) y) h₄)),

  -- Now we can rewrite the second equation using the new third equation
  have h₈ : x^2 + ((z^2) / x)^2 + z^2 = b^2,
  from eq_subst (eq_subst h₇ (inv_mul x z^2)) (eq_subst (mul_add x ((z^2) / x)^2) (eq_subst (add_mul x x ((z^2) / x)^2) (eq_subst (mul_add x^2 ((z^2) / x)^2) (eq_subst h₅ (eq_subst (eq_mul_add x^2 ((z^2) / x)^2) (eq_subst (eq_subst (eq_mul_mul (z^2) (z^2) / x
end
