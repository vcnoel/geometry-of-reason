import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_22
  (b : ℕ)
  (h₀ : b < 10)
  (h₁ : nat.sqrt (10 * b + 6) * nat.sqrt (10 * b + 6) = 10 * b + 6) :
  b = 3 ∨ b = 1 :=
begin

  have h₂ := h₁,
  have h₃ := pow_two_iff ((10 * b + 6) / 10) h₂,
  have h₄ := pow_two_iff (10 * b / 10) h₃,
  have h₅ := (eq_or_ne (10 * b + 6) 0) (ne_of_gt (pow_two_pos 0 h₄)),
  have h₆ := eq_or_ne b 3 ((ne_of_gt h₅) (ne_of_gt (pow_two_pos 1 h₄))),
  have h₇ := (eq_or_ne (10 * b + 6) 0) (ne_of_gt (pow_two_pos 1 h₄)),
  have h₈ := eq_or_ne b 1 ((ne_of_gt h₇) (ne_of_gt (pow_two_pos 0 h₄))),
  exact or.intro_left (or.intro_right (or.intro_right b h₆) h₈)

end
