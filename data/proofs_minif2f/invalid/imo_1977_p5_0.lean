import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1977_p5
  (a b q r : ℕ)
  (h₀ : r < a + b)
  (h₁ : a^2 + b^2 = (a + b) * q + r)
  (h₂ : q^2 + r = 1977) :
  (abs ((a:ℤ) - 22) = 15 ∧ abs ((b:ℤ) - 22) = 28) ∨ (abs ((a:ℤ) - 22) = 28 ∧ abs ((b:ℤ) - 22) = 15) :=
begin

  apply or.elim (Nat.exists_eq_sub_1977 h₂),
  { intros q_r,
    have q_odd : q = 2 * q', by { apply Nat.exists_eq_sub_1977 h₂, },
    have r_odd : r = 2 * r', by { apply Nat.exists_eq_sub_1977 h₂, },
    have q_pos : 0 < q', by { apply Nat.pos_of_exists_eq_sub_1977 h₂, },
    have r_pos : 0 < r', by { apply Nat.pos_of_exists_eq_sub_1977 h₂, },
    have a_pos : 0 < a, by { apply Nat.pos_of_exists_eq_sub_1977 h₁, },
    have b_pos : 0 < b, by { apply Nat.pos_of_exists_eq_sub_1977 h₁, },
    have a_lt_b : a < b, by { apply Nat.lt_of_exists_eq_sub_1977 h₁, },
    have q_pos2 : 0 < q', by { apply Nat.pos_of_exists_eq_sub_1977 h₂, },
    have r_pos2 : 0 < r', by { apply Nat.pos_of_exists_eq_sub_1977 h₂
end
