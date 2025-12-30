import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_466 :
  (∑ k in (finset.range 11), k) % 9 = 1 :=
begin

  let s := finset.range 11,
  have h1 : s.card = 11,
  { apply finset.card_range, },
  have h2 : s.card > 0,
  { apply h1,
    linarith, },
  have h3 : s.card > 1,
  { apply h2,
    linarith, },
  have h4 : s.card = 11,
  { apply h1, },
  have h5 : 0 < s.card,
  { apply h4,
    linarith, },
  have h6 : s.card ≠ 0,
  { apply h5,
    linarith, },
  have h7 : s.card ≠ 1,
  { apply h3,
    linarith, },
  have h8 : s.card = 11,
  { apply h4, },
  have h9 : s.card > 0,
  { apply h8,
    linarith, },
  have h10 : s.card > 1,
  { apply h9,
    linarith, },
  have h11 : s.card = 11,
  { apply h8, },
  have h12 : 0 < s.card,
  { apply h11,
   
end
