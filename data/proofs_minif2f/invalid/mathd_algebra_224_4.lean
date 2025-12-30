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

  rw finset.card_eq_card_image,
  apply finset.card_image_of_injective,
  rw finset.image_univ,
  apply finset.univ.inj_on,
  intros x hx y hy,
  apply (h₀ x hx).mp (h₀ y hy).mpr,

end
