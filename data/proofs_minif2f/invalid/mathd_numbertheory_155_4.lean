import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_155 :
  finset.card (finset.filter (λ x, x % 19 = 7) (finset.Icc 100 999)) = 52 :=
begin

  have h1 := finset.Icc_subset_Icc 100 999 0 18,
  have h2 := finset.filter_subset (λ x, x % 19 = 7) (finset.Icc 100 999),
  have h3 := finset.filter_subset (λ x, x % 19 = 7) (finset.Icc 100 999),
  have h4 := finset.filter_subset (λ x, x % 19 = 7) (finset.Icc 100 999),
  have h5 := finset.card_filter (λ x, x % 19 = 7) (finset.Icc 100 999),
  have h6 := finset.card_filter (λ x, x % 19 = 7) (finset.Icc 100 999),
  have h7 := finset.card_filter (λ x, x % 19 = 7) (finset.Icc 100 999),
  have h8 := finset.card_filter (λ x, x % 19 = 7) (finset.Icc 100 999),
  have h9 := finset.card_filter (λ x, x % 19 =
end
