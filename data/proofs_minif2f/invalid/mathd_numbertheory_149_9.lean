import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_149 :
  ∑ k in (finset.filter (λ x, x % 8 = 5 ∧ x % 6 = 3) (finset.range 50)), k = 66 :=
begin

  let s := finset.filter (λ x, x % 8 = 5 ∧ x % 6 = 3) (finset.range 50),
  let t := finset.filter (λ x, x % 8 = 5 ∧ x % 6 = 3) (finset.range 40),
  have h1 : s ⊆ t, by { intros a ha, exact ha },
  have h2 : ∀ a ∈ t, a ∈ s, by { intros a ha, exact ha },
  have h3 : s = t, from set.ext h1 h2,
  have h4 : s = finset.filter (λ x, x % 8 = 5 ∧ x % 6 = 3) (finset.range 40),
  from h3,
  have h5 : s.card = t.card, by { rw h4, exact t.card },
  have h6 : t.card = 10, by { rw finset.card_filter_eq, exact finset.range 40.filter (λ x, x % 8 = 5 ∧ x % 6 = 3).card },
  have h7 : s.card = 10, by { rw h5,
end
