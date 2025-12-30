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

  rw finset.card_univ,
  apply finset.ext,
  intros n,
  split,
  { intros hn,
    have hS := h₀ n,
    simp only [finset.mem_univ, hn, hS],
    simp only [real.sqrt_lt_real.sqrt_lt_real, real.sqrt_lt_real.sqrt_lt_real],
    split,
    { exact (half_lt_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half_add_half
end
