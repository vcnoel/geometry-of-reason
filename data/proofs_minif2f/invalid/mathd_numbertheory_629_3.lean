import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_629 :
  is_least {t : ℕ | 0 < t ∧ (nat.lcm 12 t)^3 = (12 * t)^2} 18 :=
begin

  refine is_least.intro 18 (λ t ht, _),
  rcases ht with ⟨hgt, hlt⟩,
  have hlt2 := pow_three_eq_pow_two_mul_pow_one (hlt),
  rw nat.lcm_mul_left 12 t at hlt2,
  rw nat.lcm_mul_right 12 t at hlt2,
  have hlt3 := nat.lcm_le_mul_left 12 t,
  have hlt4 := nat.lcm_le_mul_right 12 t,
  have hlt5 := mul_le_mul_of_nonneg_of_nonneg hlt3 hgt,
  have hlt6 := mul_le_mul_of_nonneg_of_nonneg hlt4 hgt,
  have hlt7 := le_trans hlt5 hlt6,
  have hlt8 := le_trans hlt6 hlt7,
  have hlt9 := le_trans hlt7 hlt8,
  have hlt10 := le_trans hlt8 hlt9,
  have hlt11 := le_trans hlt9 hlt10,
  have hlt12 := le_trans hlt10 hlt11,
  have hlt13 := le_trans hlt11 hlt12,
  have
end
