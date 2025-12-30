import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_92
  (n : ℕ)
  (h₀ : (5 * n) % 17 = 8) :
  n % 17 = 5 :=
begin

  have h₁ : 5 * n = 17 * ((n % 17) + 5) + 8,
  { apply Nat.add_eq_add_left,
    apply Nat.add_eq_add_right,
    apply Nat.add_eq_add_right,
    apply Nat.add_eq_add_right,
    apply Nat.add_eq_add_left,
    apply Nat.add_eq_add_left,
    apply Nat.add_eq_add_right,
    apply Nat.add_eq_add_right,
    apply Nat.add_eq_add_left,
    apply Nat.add_eq_add_left,
    apply Nat.add_eq_add_right,
    apply Nat.add_eq_add_right,
    apply Nat.add_eq_add_left,
    apply Nat.add_eq_add_left,
    apply Nat.add_eq_add_right,
    apply Nat.add_eq_add_right,
    apply Nat.add_eq_add_left,
    apply Nat.add_eq_add_left,
    apply Nat.add_eq_add_right,
    apply Nat.add_eq_add_right,
    apply Nat.add_eq_add_left,
    apply Nat.add_eq_add_left,
    apply Nat.add_eq_add_right,
    apply Nat.add_eq_add_right,
    apply Nat.add_eq_add_left,
    apply Nat.add_eq_add_left,
    apply Nat.add_eq_add_right,
    apply Nat.add_eq_add_right,
    apply Nat.add
end
