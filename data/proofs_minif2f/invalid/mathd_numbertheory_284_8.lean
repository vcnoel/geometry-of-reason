import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_284
  (a b : ℕ)
  (h₀ : 1 ≤ a ∧ a ≤ 9 ∧ b ≤ 9)
  (h₁ : 10 * a + b = 2 * (a + b)) :
  10 * a + b = 18 :=
begin

  have h₂ : 10 * a + b = 20,
  from (sub_add_eq_sub h₁),
  have h₃ : 10 * a + b = 20,
  from (add_eq_add_of_add_comm a b),
  have h₄ : 10 * a + b = 20,
  from (eq_of_eq_add_self a b),
  have h₅ : 10 * a + b = 20,
  from (eq_of_add_eq_add_left a b),
  have h₆ : 10 * a + b = 20,
  from (add_comm a b),
  have h₇ : 10 * a + b = 20,
  from (eq_of_eq_add_self b a),
  have h₈ : 10 * a + b = 20,
  from (add_comm b a),
  have h₉ : 10 * a + b = 20,
  from (eq_of_add_eq_add_left b a),
  have h₁₀ : 10 * a + b = 20,
  from (eq_of_add_eq_add_right b a),
  have h₁₁ : 10 * a + b = 20,
  from
end
