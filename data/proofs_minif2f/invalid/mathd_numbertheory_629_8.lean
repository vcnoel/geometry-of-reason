import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_629 :
  is_least {t : ℕ | 0 < t ∧ (nat.lcm 12 t)^3 = (12 * t)^2} 18 :=
begin

  let A := {t : ℕ | 0 < t ∧ (nat.lcm 12 t)^3 = (12 * t)^2},
  let B := {t : ℕ | 0 < t ∧ nat.lcm 12 t = 12 * t},
  let C := {t : ℕ | 0 < t ∧ nat.lcm 12 t = 12},
  have hA : A = B, from
    set.ext (λ t, by
      { split,
        { intro h,
          have h2 : (12 * t)^2 = (nat.lcm 12 t)^3, from h,
          have h3 : (12 * t)^2 = 12^2 * t^2, from rfl,
          have h4 : 12^2 * t^2 = 12^2 * t^2, from h2.symm ▸ h3,
          have h5 : 12^2 = (12^2)^1, from rfl,
          have h6 : 12^2 = 12^1 * 12^1, from pow_two,
          have h7 : 12^2 = 12^1 * 12^1,
end
