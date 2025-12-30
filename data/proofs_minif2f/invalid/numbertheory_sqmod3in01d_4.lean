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
  { cases a_pos with a_pos_0 a_pos_pos,
    { -- (a, a) = (0, 0)
      have h := int.mod_eq_of_lt (a_pos_0 ^ 2) 0,
      exact or.inl h },
    { -- (a, a) = (p, p)
      have h := int.mod_eq_of_lt (a_pos_pos ^ 2) 1,
      exact or.inr h } },
  { cases a_neg with a_neg_0 a_neg_neg,
    { -- (a, a) = (0, 0)
      have h := int.mod_eq_of_lt (a_neg_0 ^ 2) 0,
      exact or.inl h },
    { -- (a, a) = (-p, -p)
      have h := int.mod_eq_of_lt (a_neg_neg ^ 2) 1,
      exact or.inr h } }

end
