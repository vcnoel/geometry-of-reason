import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_13
  (u v : ℕ)
  (S : set ℕ)
  (h₀ : ∀ (n : ℕ), n ∈ S ↔ 0 < n ∧ (14 * n) % 100 = 46)
  (h₁ : is_least S u)
  (h₂ : is_least (S \ {u}) v) :
  ((u + v) : ℚ) / 2 = 64 :=
begin

  have h₃ := h₀ u,
  have h₄ := h₀ v,
  have h₅ : u = v,
  { rw h₃,
    rw h₄,
    exact nat.eq_of_abs_eq (nat.abs_eq_of_abs_eq (nat.abs_eq_of_abs_eq (nat.abs_eq_of_abs_eq (nat.abs_eq_of_abs_eq (nat.abs_eq_of_abs_eq (nat.abs_eq_of_abs_eq (nat.abs_eq_of_abs_eq (nat.abs_eq_of_abs_eq (nat.abs_eq_of_abs_eq (nat.abs_eq_of_abs_eq (nat.abs_eq_of_abs_eq (nat.abs_eq_of_abs_eq (nat.abs_eq_of_abs_eq (nat.abs_eq_of_abs_eq (nat.abs_eq_of_abs_eq (nat.abs_eq_of_abs_eq (nat.abs_eq_of_abs_eq (nat.abs_eq_of_abs_eq (nat.abs_eq_of_abs_eq (nat.abs_eq_of_abs_eq (nat.abs_eq_of_abs_eq (nat.abs_eq_of_abs_eq (nat.abs_eq_of_abs_eq (nat.abs_eq_of_abs_eq (nat.abs_eq_of_abs_eq (nat.abs_eq_of_abs_eq (nat.abs_eq_of_abs_eq (nat.abs_eq_of_abs_eq (nat.abs_eq_of_abs_eq (nat.abs_eq_of
end
