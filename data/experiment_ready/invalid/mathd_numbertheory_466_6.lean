import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_466 :
  (∑ k in (finset.range 11), k) % 9 = 1 :=
begin

  -- The sum of the first n natural numbers is n*(n+1)/2
  have h1 : ∑ k in (finset.range 11), k = 11 * 12 / 2,
  by simp [finset.sum_range, nat.succ_pred_eq_of_add_one, nat.pred_eq_sub_one],

  -- 11*12/2 % 9 = 132/2 % 9 = 66 % 9 = 6
  have h2 : (11 * 12 / 2) % 9 = 6,
  by { rw h1, rw nat.div_mul_cancel (2 : ℕ),
       have h3 : 132 % 9 = 3,
       by { have h4 : 132 = 9 * 14 + 6,
             by { have h5 : 132 = 9 * 14 + 6,
                  by { have h6 : 132 = 11 * 12,
                        by { have h7 : 132 = 132,
                              by refl },
                       have h8 : 132 = 9 * 14 + 6,
                       by { have h9 : 132 = 9 * 14 + 
end
