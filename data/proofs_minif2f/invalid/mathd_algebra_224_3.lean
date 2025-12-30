import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_224
  (S : finset ℕ)
  (h₀ : ∀ (n : ℕ), n ∈ S ↔ real.sqrt n < 7 / 2 ∧ 2 < real.sqrt n) :
  S.card = 8 :=
begin

  apply finset.card_congr h₀,
  rw finset.filter_eq,
  apply finset.univ.filter,
  apply filter_set,
  split,
  { intros n hn,
    refine ⟨real.sqrt n < 7 / 2, 2 < real.sqrt n⟩,
    { rw real.sqrt_lt_sqrt,
      exact hn },
    { rw real.sqrt_lt_sqrt,
      exact hn } },
  { intros h,
    apply nat.exists_pos_of_sqrt_pos,
    apply h }

end
