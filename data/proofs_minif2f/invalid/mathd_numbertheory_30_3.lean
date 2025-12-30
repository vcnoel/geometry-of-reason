import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_30 :
  (33818^2 + 33819^2 + 33820^2 + 33821^2 + 33822^2) % 17 = 0 :=
begin

  have h1 := congr_arg (λ (a : ℤ), a^2) (nat.add_sub_cancel 33821 33822),
  have h2 := congr_arg (λ (a : ℤ), a^2) (nat.add_sub_cancel 33818 33819),
  have h3 := congr_arg (λ (a : ℤ), a^2) (nat.add_sub_cancel 33820 33821),
  have h4 := congr_arg (λ (a : ℤ), a^2) (nat.add_sub_cancel 33820 33821),
  have h5 := congr_arg (λ (a : ℤ), a^2) (nat.add_sub_cancel 33820 33821),
  have h6 := congr_arg (λ (a : ℤ), a^2) (nat.add_sub_cancel 33820 33821),
  have h7 := congr_arg (λ (a : ℤ), a^2) (nat.add_sub_cancel 33820 33821),
  have h8 := congr_arg (λ (a : ℤ), a^2) (nat.add_sub_cancel 33820 33821),
  have h9 := congr_arg (
end
