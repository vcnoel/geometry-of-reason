import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_629 :
  is_least {t : ℕ | 0 < t ∧ (nat.lcm 12 t)^3 = (12 * t)^2} 18 :=
begin

  let p := {t : ℕ | 0 < t ∧ (nat.lcm 12 t)^3 = (12 * t)^2},
  let q := {t : ℕ | 0 < t ∧ (nat.lcm 12 t)^3 = (12 * t)^2 ∧ t ≤ 18},
  have A := λ t : ℕ, nat.lcm 12 t ^ 3 = (12 * t) ^ 2 → 12 * t ≤ (nat.lcm 12 t)^3,
  have B := λ t : ℕ, 12 * t ≤ (nat.lcm 12 t)^3 → t ≤ (nat.lcm 12 t)^3 / 12,
  have C := λ t : ℕ, nat.lcm 12 t ^ 3 = (12 * t) ^ 2 → nat.lcm 12 t ^ 3 = (nat.lcm 12 t)^3,
  have D := λ t : ℕ, nat.lcm 12 t ^ 3 = (12 * t) ^ 2 → nat.lcm 12 t ^ 3 = (12 * t)^3,
  have E := λ t : ℕ, nat.lcm 12
end
