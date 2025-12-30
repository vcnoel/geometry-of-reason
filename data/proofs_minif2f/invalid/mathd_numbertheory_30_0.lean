import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_30 :
  (33818^2 + 33819^2 + 33820^2 + 33821^2 + 33822^2) % 17 = 0 :=
begin

  calc
  (33818^2 + 33819^2 + 33820^2 + 33821^2 + 33822^2) % 17
  = (33818^2 + 33821^2) % 17 + (33819^2 + 33820^2 + 33822^2) % 17
  := by ring_nf
 ... = 3 * 33818^2 % 17 + 3 * 33819^2 % 17
  := by ring_nf
 ... = 3 * (33818^2 % 17 + 33819^2 % 17)
  := by congr; ring_nf
 ... = 3 * (33818^2 % 17 + (33818 + 1)^2 % 17)
  := by congr; ring_nf
 ... = 3 * (33818^2 % 17 + 33818^2 % 17 + 2 * 33818 + 1)
  := by congr; ring_nf
 ... = 6 * 33818^2 % 17 + 3 * 2 * 33818 + 3
  :=
end
