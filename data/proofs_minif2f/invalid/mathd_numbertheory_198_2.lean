import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_198 :
  (5^2005) % 100 = 25 :=
begin

  have h1 : 5^2005 = (10^2005) * (5^2004),
  by {calc 5^2005 = (5^2004) * 5 : by simp
     ... = (5^2004) * (10 * 5) : by ring
     ... = (10 * 5^2004) * 5 : by ring
     ... = (10^2005) * (5^2004) : by ring},
  have h2 : (5^2004) % 100 = 25,
  by {calc (5^2004) % 100 = (25^1004) % 100 : by {calc 5^2004 = (5^4)^500 : by {norm_num}
     ... = (25^2)^500 : by ring
     ... = 25^1000 : by {norm_num}
     ... = 25^1004 : by ring}
     ... = 25 : by {norm_num}},
  have h3 : ((10^2005) * (5^2004)) % 100 = (10^2005) % 100 * ((5^2004
end
