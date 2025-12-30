import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_211 :
  finset.card (finset.filter (λ n, 6 ∣ (4 * ↑n - (2 : ℤ))) (finset.range 60)) = 20 :=
begin

  -- The number of solutions to 6 ∣ 4n - 2 is equal to the number of solutions to 2 ∣ n.
  have := finset.card_eq (finset.filter (λ n, 2 ∣ n) (finset.range 60)),
  -- The number of solutions to 2 ∣ n is equal to the number of multiples of 2 in the range [1, 60].
  have := finset.card_eq (finset.filter (λ n, 2 * n = n) (finset.range 60)),
  -- The number of multiples of 2 in the range [1, 60] is equal to the number of elements in the set {2, 4,..., 60}.
  have := finset.card_eq (finset.range (60 / 2)),
  -- The number of elements in the set {2, 4,..., 60} is equal to 30.
  have := finset.card_eq (finset.range 30),
  -- Therefore, the number of solutions to 6 ∣ 4n - 2 is equal to 30.
  have := by {rw [←this, ←this, ←this], simp},

end
