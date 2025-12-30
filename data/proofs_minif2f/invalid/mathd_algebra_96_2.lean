import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_96
  (x y z a : ℝ)
  (h₀ : 0 < x ∧ 0 < y ∧ 0 < z)
  (h₁ : real.log x - real.log y = a)
  (h₂ : real.log y - real.log z = 15)
  (h₃ : real.log z - real.log x = -7) :
  a = -8 :=
begin

  let c = real.log x + real.log y + real.log z - 21,
  let d = real.log x - real.log y - real.log z + 7,
  let e = real.log x - real.log z - real.log y + 8,
  let f = real.log y - real.log z - real.log x + 16,
  let g = real.log z - real.log x - real.log y + 28,
  let h = real.log x - real.log y - real.log z + 32,
  let i = real.log x - real.log z - real.log y - 40,
  let j = real.log y - real.log z - real.log x + 48,
  let k = real.log z - real.log x - real.log y - 56,
  let l = real.log x - real.log z - real.log y - 64,
  let m = real.log z - real.log x + 80,
  let n = real.log x - real.log y + 96,
  let o = real.log y - real.log z + 112,
  let p = real.log z - real.log x + 128,
  let q = real.log
end
