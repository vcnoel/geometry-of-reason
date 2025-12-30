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

  ring_nf,
  calc
    (3 * (7 * ↑j + 3)) % 7
        = 21 * ↑j + 9 % 7
       ... = 0 * ↑j + 2
       ... = 2,
  exact_mod_cast h₀,

end
