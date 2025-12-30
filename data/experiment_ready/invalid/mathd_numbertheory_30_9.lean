import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_30 :
  (33818^2 + 33819^2 + 33820^2 + 33821^2 + 33822^2) % 17 = 0 :=
begin

  apply congr_arg (λ x:ℕ, x % 17),
  ring,

end
