import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_629 :
  is_least {t : ℕ | 0 < t ∧ (nat.lcm 12 t)^3 = (12 * t)^2} 18 :=
begin

  -- Show that 18 is an element of the set
  have h1 : 0 < 18 ∧ (nat.lcm 12 18)^3 = (12 * 18)^2,
  { split,
    { exact nat.pos_of_ne_zero (nat.succ_ne_zero 0), },
    { simp [nat.lcm_def, nat.pow, nat.succ],
      ring_nf,
      congr,
      ring_nf,
      ring } },
  -- Show that for any x in the set, x ≥ 18
  have h2 : ∀ x ∈ {t : ℕ | 0 < t ∧ (nat.lcm 12 t)^3 = (12 * t)^2}, x ≥ 18,
  { intros x hx,
    -- We know that 12 | x
    have h3 : 12 ∣ x,
    { have h4 : 12 ≠ 0, by simp,
      have h5 : x ≠ 0, by simp,
      have h6 : 12 * x / 12 = x, by simp,
      exact nat.div_unique h4 h5 h6 },
    -- We know that 3 | x
    have h7 : 3 ∣
end
