import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_64 :
  is_least {x : ℕ | 30 * x ≡ 42 [MOD 47]} 39 :=
begin

  apply is_least.intro 39,
  intro x,
  apply nat.exists_eq_of_forall_le,
  intro y,
  have h1 := (mod_add_div 42 47 30).symm,
  have h2 : (42 - 30 * 39) % 47 = 42 % 47 := by { ring },
  have h3 : (42 - 30 * y) % 47 ≤ (42 - 30 * 39) % 47 := by { apply nat.mod_le_of_sub_le, apply le_sub, linarith },
  have h4 : 42 - 30 * y ≤ 42 - 30 * 39 := by { apply le_sub, linarith },
  have h5 : 30 * y ≥ 30 * 39 := by { apply mul_le_mul, linarith, linarith },
  have h6 : y ≥ 39 := by { apply div_le_div, linarith, linarith },
  exact h6,

end
