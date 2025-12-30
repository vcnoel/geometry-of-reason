import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_81 :
  71 % 3 = 2 :=
begin

  have h1 : 72 % 3 = 0, by simp,
  have h2 : 70 % 3 = 0, by simp,
  have h3 : 71 % 3 = 1, by simp,
  have h4 : 69 % 3 = 0, by simp,
  have h5 : 71 = 70 + 1, by simp,
  have h6 : 71 = 72 - 1, by simp,
  have h7 : 71 % 3 = 1 - 0, by simp,
  have h8 : 71 % 3 = (72 - 1) % 3, by simp,
  have h9 : 71 % 3 = 2, by simp,
  exact h9,

end
