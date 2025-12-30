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
  have h1 : 7 ∣ 2^n,
  from (dvd.intro_right 1 $ (dvd_trans (dvd.intro_left 1 (pow_dvd_pow 2 n)) h).symm),
  have h2 : 7 ∣ (2^n + 1) - 2^n,
  from (dvd.intro_right 1 $ (dvd_trans (dvd.intro_left 1 (pow_dvd_pow 2 n)) h)),
  have h3 : 7 ∣ 1,
  from (dvd.intro_right (2^n) $ (dvd_trans (dvd.intro_left 1 h1) h2)),
  exact absurd h3 (dvd_not_dvd 7),

end
