import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_43 :
  is_greatest {n : ℕ | 15^n ∣ 942! } 233 :=
begin

  apply is_greatest_of_forall_is_least,
  intros n h,
  have h1 : 15^n ∣ 942! := h,
  have h2 : 15^n ∣ 15^(942-n),
  { apply nsmul_dvd,
    apply pow_dvd_pow,
    apply dvd_refl },
  have h3 : 15^n ∣ 942! * (15^(942-n)),
  { apply mul_dvd_mul,
    apply h1,
    apply h2 },
  have h4 : 15^(942-n) ∣ 942! * (15^(942-n)),
  { apply pow_dvd_pow,
    apply dvd_refl },
  have h5 : 15^(942-n) ∣ 942! * (15^(942-n)) / 15^n,
  { apply div_dvd_div,
    apply h3,
    apply h4 },
  have h6 : 942! * (15^(942-n)) / 15^n = 942! / 15^n,
  { apply div_mul,
    apply dvd_refl },
  have h7 : 15^(942-n) ∣ 942! / 15^n,
  { apply h5,
   
end
