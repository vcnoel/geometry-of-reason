import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_629 :
  is_least {t : ℕ | 0 < t ∧ (nat.lcm 12 t)^3 = (12 * t)^2} 18 :=
begin

  let T := {t : ℕ | 0 < t ∧ (nat.lcm 12 t)^3 = (12 * t)^2},
  let T_lower_bound := 18,
  have H1 : 18 ∈ T := 
end
