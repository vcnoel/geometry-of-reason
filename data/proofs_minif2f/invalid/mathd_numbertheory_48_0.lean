import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_48
  (b : ℕ)
  (h₀ : 0 < b)
  (h₁ : 3 * b^2 + 2 * b + 1 = 57) :
  b = 4 :=
begin

  -- To solve this problem, we will use the fact that if a polynomial has a rational root,
  -- then that root is a divisor of the constant term.
  have h₂ : 3 * b^2 + 2 * b + 1 = 57, from h₁,
  -- We know that the constant term of the polynomial is 1.
  have h₃ : (3 * b^2 + 2 * b + 1).lead_coeff = 3,
    by
      { apply eq_of_le_of_not_le,
        { exact nat.le_of_lt h₀ },
        { intros a,
          by_contradiction a,
          have h₄ : a = 3,
            by
              { rw [h₂, h₃, nat.div_eq_iff_mul_eq],
                { exact eq_of_eq_mul_right (eq_of_eq_one (eq_of_eq_add_one a)) },
                { exact h₀ },
                { exact h₀ } },
          have h₅ : a = 3,
            by
              { rw [h₂, h₃, nat.div_eq_iff_mul_eq],
                { exact eq_of_eq_mul_right (eq_of_eq_add_one a) },
                { exact h₀
end
