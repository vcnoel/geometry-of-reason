import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_739 :
  9! % 10 = 0 :=
begin

  have H := 9! % 10 = (9 * 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1) % 10,
  simp only [H] at *,
  have H1 : 9 % 10 = 9,
  { norm_num },
  have H2 : 8 % 10 = 8,
  { norm_num },
  have H3 : 7 % 10 = 7,
  { norm_num },
  have H4 : 6 % 10 = 6,
  { norm_num },
  have H5 : 5 % 10 = 5,
  { norm_num },
  have H6 : 4 % 10 = 4,
  { norm_num },
  have H7 : 3 % 10 = 3,
  { norm_num },
  have H8 : 2 % 10 = 2,
  { norm_num },
  have H9 : 1 % 10 = 1,
  { norm_num },
  have H10 : 9 * 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1 % 10
end
