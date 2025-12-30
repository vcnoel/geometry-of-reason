import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_64 :
  is_least {x : ℕ | 30 * x ≡ 42 [MOD 47]} 39 :=
begin

  let s : set ℕ := {x : ℕ | 30 * x ≡ 42 [MOD 47]},
  have h1 : 39 ∈ s := by { let p := 30 * 39 = 42 [MOD 47], rw [int.mul_mod, int.mod_eq_of_lt],
    have h1_1 := int.mod_lt _ _,
    have h1_2 := int.mod_eq_of_lt h1_1,
    have h1_3 := int.mul_mod p 30 47,
    have h1_4 := int.add_mod h1_3 42 47,
    have h1_5 := int.add_mod h1_4 0 47,
    have h1_6 := int.mod_eq_of_lt h1_5,
    have h1_7 := int.mod_eq_zero_of_add_eq h1_6,
    show 30 * 39 ≡ 42 [MOD 47], from h1_7 },
  have h2 : ∀ (x ∈ s), 39 ≤ x := by { intros x hx, apply le_of_not_gt,
    intro h3, have h4 := not_le_of_gt h3 39,
    have h
end
