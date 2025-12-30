import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1964_p1_2
  (n : ℕ) :
  ¬ 7 ∣ (2^n + 1) :=
begin

  intro h,
  have h1 : 2 * (2^n + 1) = 2^(n + 1) + 2,
  by { rw [mul_add, add_assoc, add_comm] },
  have h2 : 2 * (2^(n + 1) + 2) = 2^(n + 2) + 4,
  by { rw [add_mul, mul_two] },
  have h3 : 7 ∣ 2^(n + 2) + 4,
  from h,
  have h4 : 7 ∣ 2^(n + 1) + 2,
  from h1 ▸ h3,
  have h5 : 7 ∣ 2^(n + 1) + 4,
  from h2 ▸ h4,
  have h6 : 7 ∣ 2^(n + 1) + 2 - 2,
  by { rw [sub_sub, sub_zero] },
  have h7 : 7 ∣ 2^(n + 1),
  from h6,
  have h8 : 7 ∣ 2^(n + 1) - 2,

end
