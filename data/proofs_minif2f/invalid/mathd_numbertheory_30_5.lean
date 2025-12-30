import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_30 :
  (33818^2 + 33819^2 + 33820^2 + 33821^2 + 33822^2) % 17 = 0 :=
begin

  have h1 := congr_arg (λ (x : ℤ), x % 17) (33818^2 + 33819^2 + 33820^2 + 33821^2 + 33822^2),
  have h2 := congr_arg (λ (x : ℤ), x % 17) (33818^2),
  have h3 := congr_arg (λ (x : ℤ), x % 17) (33819^2),
  have h4 := congr_arg (λ (x : ℤ), x % 17) (33820^2),
  have h5 := congr_arg (λ (x : ℤ), x % 17) (33821^2),
  have h6 := congr_arg (λ (x : ℤ), x % 17) (33822^2),
  have h7 := add_assoc (33818^2) (33819^2) (33820^2),
  have h8 := add_assoc (33821^2) (33822^2) 0,
  have h9 := add_comm (33821^2) (33822^2),
  have h10 := add_assoc (33818
end
