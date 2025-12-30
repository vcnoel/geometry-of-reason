import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12b_2002_p2
  (x : ℤ)
  (h₀ : x = 4) :
  (3 * x - 2) * (4 * x + 1) - (3 * x - 2) * (4 * x) + 1 = 11 :=
begin
  rw h₀,
  linarith,
end