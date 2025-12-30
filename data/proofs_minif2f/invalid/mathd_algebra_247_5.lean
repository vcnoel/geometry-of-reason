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

  have h₂ : n^2 - 2^n + 1 = 3^2 - 2^3 + 1,
  { rw [n, h₁] },
  have h₃ : n^2 = 3^2,
  { rw [n, h₂] },
  have h₄ : n^2 - 2^n + 1 = 9 - 8 + 1,
  { rw [h₂] },
  have h₅ : n^2 - 2^n + 1 = 2,
  { rw [h₄] },
  have h₆ : n = 3,
  { exact n },
  have h₇ : s = 2,
  { exact h₁ },
  have h₈ : t = 2 * s - s^2,
  { exact h₀ },
  have h₉ : t = 2 * 2 - 2^2,
  { rw [h₇, h₈] },
  have h₁₀ : t = 4 - 4,
  { rw [h₉] },
  have h₁₁ : t = 0,
  { rw [h₁₀]
end
