import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_247
  (t s : ℝ)
  (n : ℤ)
  (h₀ : t = 2 * s - s^2)
  (h₁ : s = n^2 - 2^n + 1)
  (n = 3) :
  t = 0 :=
begin

  simp at h₀,
  simp at h₁,
  simp at n,
  norm_num at n,
  ring at h₀,
  ring at h₁,
  ring at n,
  have h₂ := h₁,
  have h₃ := h₀,
  rw h₂ at h₃,
  ring at h₃,
  rw h₂,
  ring,

end
