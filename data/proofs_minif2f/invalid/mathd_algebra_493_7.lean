import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_493
  (f : ℝ → ℝ)
  (h₀ : ∀ x, f x = x^2 - 4 * real.sqrt x + 1) :
  f (f 4) = 70 :=
begin

  calc f (f 4) = f (16 - 8 * real.sqrt 4 + 1) : by simp [h₀, real.sqrt 4]
 ... = (16 - 8 * real.sqrt 4 + 1)^2 - 4 * real.sqrt (16 - 8 * real.sqrt 4 + 1) + 1 : by simp [h₀]
 ... = 256 - 256 * real.sqrt 4 + 16 + 4 * real.sqrt 4 - 64 * real.sqrt 4 + 1 + 1 : by ring_nf
 ... = 256 - 256 * 2 + 16 + 4 * 2 - 64 * 2 + 2 : by ring_nf
 ... = 256 - 512 + 16 + 8 - 128 + 2 : by ring_nf
 ... = 256 - 512 + 16 + 8 - 128 + 2 : by ring_nf
 ... = 256 - 512 + 24 - 128 + 2 : by ring_nf
 ... = 256 - 512 + 24 - 128 + 2 : by ring_nf
 
end
