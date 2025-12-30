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

  have h₃ : r ≤ a * q + b * q := by
    { calc
        r ≤ a * q + b * q :
          by { apply le_trans (le_of_lt h₀) (add_le_add (le_mul_of_pos_left (le_of_lt h₀) _) (le_mul_of_pos_left (le_of_lt h₀) _)) }
        }
  have h₄ : r < a * q + b * q := by
    { calc
        r < a * q + b * q :
          by { apply lt_of_le_of_lt (le_of_lt h₃) (lt_add_of_pos_lt (le_of_lt h₀) h₀) }
        }
  have h₅ : q^2 + r = 1977 := by
    { calc
        q^2 + r = 1977 :
          by { apply eq_of_sub_eq_zero (sub_eq_iff_eq_add.1 h₂) }
        }
  have h₆ : q^2 + r = (a + b) * q + r := by
    { calc
        q^2 + r = (a + b) * q + r :
          by { apply eq_of
end
