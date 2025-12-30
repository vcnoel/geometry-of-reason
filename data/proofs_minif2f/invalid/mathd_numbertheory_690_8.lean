import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_690 :
  is_least {a : ℕ | 0 < a ∧ a ≡ 2 [MOD 3] ∧ a ≡ 4 [MOD 5] ∧ a ≡ 6 [MOD 7] ∧ a ≡ 8 [MOD 9]} 314 :=
begin

  let S := {a : ℕ | 0 < a ∧ a ≡ 2 [MOD 3] ∧ a ≡ 4 [MOD 5] ∧ a ≡ 6 [MOD 7] ∧ a ≡ 8 [MOD 9]},
  let T := {a : ℕ | 0 < a ∧ a ≡ 2 [MOD 3] ∧ a ≡ 4 [MOD 5] ∧ a ≡ 6 [MOD 7]},
  let U := {a : ℕ | 0 < a ∧ a ≡ 2 [MOD 3] ∧ a ≡ 4 [MOD 5]},
  let V := {a : ℕ | 0 < a ∧ a ≡ 2 [MOD 3]},
  let W := {a : ℕ | 0 < a},
  let a := 314,
  let f := λ n : ℕ, 30n + 14,
  have h1 : ∀ n : ℕ, f n ∈ W,
  { intro n,
    unfold f,
    exact nat.pos_of_neq_zero (30 * n + 14) },
  have h2 : ∀ n : ℕ, f n ≡ 2
end
