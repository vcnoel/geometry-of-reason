import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_629 :
  is_least {t : ℕ | 0 < t ∧ (nat.lcm 12 t)^3 = (12 * t)^2} 18 :=
begin

  -- We need to prove that 18 is the smallest number that satisfies the given conditions.
  -- To do this, we can use the definition of is_least.
  let t := 18,
  have h1 : 0 < t, from nat.pos_of_ne_zero (ne_of_gt (by assumption)),
  have h2 : nat.lcm 12 t = 36, from nat.lcm_def.2 (ne_of_gt (by assumption)) (by assumption),
  have h3 : nat.lcm 12 t^3 = (12 * t^2)^2, from h2 ▸ (pow_mul _ _ _).symm,
  show t ∈ {t : ℕ | 0 < t ∧ (nat.lcm 12 t)^3 = (12 * t)^2}, from ⟨h1, h3⟩,
  -- Now, we need to prove that there is no smaller number that satisfies the conditions.
  -- Let's assume there is a smaller number.
  assume t' : ℕ,
  have h1' : 0 < t', from nat.pos_of_ne_zero (ne_of_gt (by assumption)),
  have h2' : nat.lcm 12 t' < nat.lcm
end
