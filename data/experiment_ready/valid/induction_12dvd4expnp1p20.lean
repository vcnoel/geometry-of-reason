import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem induction_12dvd4expnp1p20
  (n : ℕ) :
  12 ∣ 4^(n+1) + 20 :=
begin
  have dvd_of_dvd_add_mul_left : ∀ (a b n : ℕ), a ∣ b + a * n → a ∣ b :=
  begin
    intros a b n,
    refine (nat.dvd_add_left _).mp,
    exact (dvd_mul_right a n),
  end