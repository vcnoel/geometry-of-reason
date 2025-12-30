import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_43 :
  is_greatest {n : ℕ | 15^n ∣ 942! } 233 :=
begin

  apply nat.exists_ge_of_forall_gt,
  intros n h,
  obtain ⟨k, rfl⟩ := nat.exists_eq_add_of_lt h,
  have h₂ : 233 * (15^k)^n = 942!/(15^(942-k*n)),
  { rw [pow_add, pow_mul, pow_sub, fact_div_fact] },
  have h₃ : 233 * (15^k)^n ∣ 942!/(15^(942-k*n)),
  { exact (mul_dvd_mul_left _ _) },
  have h₄ : 942-k*n < 942,
  { linarith },
  have h₅ : 15^(942-k*n) > 1,
  { apply pow_pos, linarith },
  have h₆ : 15^(942-k*n) ∣ 942!/(15^(942-k*n)),
  { exact (dvd_div _ _) },
  have h₇ : 233 * (15^k)^n = 942!/(15^(942-k*n)),
  { exact (dvd_trans h₃ h₆).mpr h₂ },
  have h₈ : (15^k)^n ∣ 942!/(15^(942
end
