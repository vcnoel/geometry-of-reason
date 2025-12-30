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
  have h2 := congr_arg (λ p, p % 7) (congr_arg nat.pow (congr_arg (λ n, 2 * n) h)),
  have h3 := congr_arg (λ p, p % 7) (congr_arg nat.pow (congr_arg (λ n, 2 * n + 1) h)),
  have h4 := congr_arg (λ p, p % 7) (congr_arg nat.pow (congr_arg (λ n, 2 * n + 1) h)),
  have h5 := congr_arg (λ p, p % 7) (congr_arg nat.pow (congr_arg (λ n, 2 * n + 1) h)),
  have h6 := congr_arg (λ p, p % 7) (congr_arg nat.pow (congr_arg (λ n, 2 * n + 1) h)),
  have h7 := congr_arg (λ p, p % 7) (congr_arg nat.pow (congr_arg (λ n, 2 * n + 1) h)),
  have h8 := congr_arg (λ p, p % 7
end
