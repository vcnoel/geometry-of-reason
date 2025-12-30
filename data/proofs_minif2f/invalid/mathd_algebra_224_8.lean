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

  rw finset.card_eq_sup_set,
  show (S : set ℕ).sup (λ n, {real.sqrt n < 7 / 2 ∧ 2 < real.sqrt n}) = 8,
  show (S : set ℕ).sup (λ n, {real.sqrt n < 7 / 2 ∧ 2 < real.sqrt n}) = 8,
  rw finset.sup_set_of_nonempty,
  show ∀ (x : ℕ), x ∈ (S : set ℕ) → (λ n, {real.sqrt n < 7 / 2 ∧ 2 < real.sqrt n}) x = {8},
  intros x hx,
  rw finset.mem_set_of_eq at hx,
  have h₁ := h₀ x hx,
  have h₂ := h₁.left,
  have h₃ := h₂.elim_left,
  have h₄ := h₃.elim_left,
  have h₅ := h₄.elim_left,
  have h₆ := h₅.elim_left,
  have h₇ := h₆.elim_left,
  have h₈ := h₇.elim_left,
  have h₉ := h₈.elim_left,

end
