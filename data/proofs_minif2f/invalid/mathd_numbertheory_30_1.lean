import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_30 :
  (33818^2 + 33819^2 + 33820^2 + 33821^2 + 33822^2) % 17 = 0 :=
begin

  have h1 : (33818^2 + 33819^2 + 33820^2 + 33821^2 + 33822^2) % 17 = ((33818^2) % 17 + (33819^2) % 17 + (33820^2) % 17 + (33821^2) % 17 + (33822^2) % 17) % 17,
  by apply congr_arg,
  have h2 : (33818^2) % 17 = (33818^2) % 17,
  by apply congr_arg,
  have h3 : (33819^2) % 17 = (33819^2) % 17,
  by apply congr_arg,
  have h4 : (33820^2) % 17 = (33820^2) % 17,
  by apply congr_arg,
  have h5 : (33821^2) % 17 = (33821^2) % 17,
  by apply congr_arg,
  have h6 : (33822^2) % 17 = (33822^2) % 17,
  by apply congr_arg,
  have
end
