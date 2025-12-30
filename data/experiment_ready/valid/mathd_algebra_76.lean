import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_76
  (f : ℤ → ℤ)
  (h₀ : ∀n, odd n → f n = n^2)
  (h₁ : ∀ n, even n → f n = n^2 - 4*n -1) :
  f 4 = -1 :=
begin
  suffices : f 4 = 4^2 - 4*4 - 1, rw this; ring_nf,
  apply h₁,
  refine even_iff_two_dvd.mpr _,
  exact two_dvd_bit0,
end