import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_sqineq_2unitcircatblt1
  (a b : ℝ)
  (h₀ : a^2 + b^2 = 2) :
  a * b ≤ 1 :=
begin

  by_cases (a = 0 ∨ b = 0),
  { contrapose! h₀,
    have h₁ : (a^2 + b^2) ≠ 2,
    from not_false (h₀),
    by_contradiction h₂,
    have h₃ : a * b ≠ 1,
    from not_false (h₂),
    have h₄ : a * b > 0,
    from le_pos (mul_pos (abs_nonneg a) (abs_nonneg b)),
    have h₅ : a ≠ 0 ∨ b ≠ 0,
    from or_iff_not_and_not.2 (not_and_not (h₃)),
    have h₆ : a ≠ 0 ∧ b ≠ 0,
    from and_iff_right_of_imp h₅ (λ (h : a ≠ 0 ∨ b ≠ 0), h.elim (λ (ha : a ≠ 0), and.intro ha (not_false h)) (λ (hb : b ≠ 0), and.intro (not_false hb) hb)),
    have h₇ : a ≠ 0,
    from h₆.left,
    have h₈ : b ≠ 0,
    from h�
end
