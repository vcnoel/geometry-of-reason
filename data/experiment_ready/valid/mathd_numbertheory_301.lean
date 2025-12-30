import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_301
  (j : ℕ)
  (h₀ : 0 < j) :
  (3 * (7 * ↑j + 3)) % 7 = 2 :=
begin
  calc 3 * (7 * ↑j + 3) % 7 = (3 * 3 + (3 * ↑j) * 7) % 7 : by {ring_nf}
    ... = (3 * 3) % 7 : by {apply nat.add_mul_mod_self_right}
    ... = 2 : by {norm_num},
end