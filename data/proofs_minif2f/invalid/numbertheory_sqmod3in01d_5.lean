import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem numbertheory_sqmod3in01d
  (a : ℤ) :
  (a^2) % 3 = 0 ∨ (a^2) % 3 = 1 :=
begin

  cases a with a_pos a_neg,
  { have a2_pos: a^2 ≥ 0,
    by { rw [pow_two, zero_le a_pos],
         exact dec_trivial },
    have a2_mod3: (a^2) % 3 = 0,
    by { apply tauto },
    exact or.inl a2_mod3 },
  { have a2_neg: a^2 ≤ 0,
    by { rw [pow_two, zero_le a_neg],
         exact dec_trivial },
    have a2_mod3: (a^2) % 3 = 1,
    by { apply tauto },
    exact or.inr a2_mod3 },

end
