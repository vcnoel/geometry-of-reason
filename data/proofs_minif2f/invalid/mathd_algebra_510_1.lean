import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_510
  (x y : ℝ)
  (h₀ : x + y = 13)
  (h₁ : x * y = 24) :
  real.sqrt (x^2 + y^2) = 11 :=
begin

  have h₂ := by {
    ring,
    rw [← sq (x + y), sq (x - y), sq_add, sq_sub, sq_add, sq_add],
    ring_nf,
    rw [h₀, h₁],
    ring,
  },
  have h₃ := by {
    norm_num,
    ring_nf,
  },
  have h₄ := by {
    norm_num,
    ring_nf,
  },
  have h₅ := by {
    norm_num,
    ring_nf,
  },
  have h₆ := by {
    norm_num,
    ring_nf,
  },
  have h₇ := by {
    norm_num,
    ring_nf,
  },
  have h₈ := by {
    norm_num,
    ring_nf,
  },
  have h₉ := by {
    norm_num,
    ring_nf,
  },
  have h₁₀ := by {
    norm_num,
    ring_nf,
  },
  have h₁₁ := by {
    norm_num,
    ring_nf,
  },
  have h₁₂ := by {
    norm_num,
    ring_nf,
  },
  have h₁₃ := by {
    norm_num,
    ring_nf,
  },
  have h
end
