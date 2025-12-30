import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_227
  (x y n : ℕ+)
  (h₀ : ↑x / (4:ℝ) + y / 6 = (x + y) / n) :
  n = 5 :=
begin
  field_simp at h₀,
  have h₂ : (6:ℝ) * x * (n - 4) = 4 * y * (6 - n), {
    field_simp,
    ring_nf,
    linarith[h₀],
  },
  have p₁ : (0:ℝ) < y, norm_num,
  have p₂ : (0:ℝ) < x, norm_num,
  have repl₁: ↑(6:ℕ+) = (6:ℕ), {
    apply @pnat.to_pnat'_coe 6,
    norm_num,
  },
  have repl₂: ↑(4:ℕ+) = (4:ℕ), {
    apply @pnat.to_pnat'_coe 4,
    norm_num,
  },
  by_contradiction h,
  change n ≠ 5 at h,
  by_cases b₀ : n < 5,
  {
    have k₁ : (0:ℝ) < 4 * ↑y * (6 - ↑n), {
      suffices: (0:ℝ) < (6 - ↑n), {
        nlinarith [this, p₁],
      },
      norm_num [b₀],
      norm_cast,
      rw ← repl₁,
      norm_cast,
      clear h₀ h₂ h repl₁,
      suffices: (5:ℕ+) < 6, {
        exact lt_trans b₀ this,
      },
      dec_trivial!,
    },
    rw ← h₂ at k₁,
    have k₂ : 6 * ↑x * (↑n - 4) ≤ (0:ℝ), {
      suffices: (↑n - 4) ≤ (0:ℝ), {
        nlinarith [this, p₂],
      },
      norm_num,
      norm_cast,
      rw ← repl₂,
      norm_cast,
      apply pnat.lt_add_one_iff.mp,
      suffices : (4 + 1) = (5:ℕ+), {
        rwa this,
      },
      dec_trivial!,
    },
    revert k₂,
    contrapose!,
    intro k₃,
    exact k₁,
  },
  {
    have b₁: 5 < n, {
      push_neg at b₀,
      exact (ne.symm h).le_iff_lt.mp b₀,
    },
    have k₁ : 4 * ↑y * (6 - ↑n) ≤ (0:ℝ), {
      suffices: (6 - ↑n) ≤ (0:ℝ), {
        nlinarith [this, p₁],
      },
      norm_num,
      norm_cast,
      rw ← repl₁,
      norm_cast,
      exact b₁,
    },
    have k₂ : (0:ℝ) < 6 * ↑x * (↑n - 4), {
      suffices : (0: ℝ) < (↑n - 4), {
        nlinarith [this, p₂],
      },
      norm_num,
      norm_cast,
      rw ← repl₂,
      norm_cast,
      refine lt_trans _ b₁,
      dec_trivial!,
    },
    rw ← h₂ at k₁,
    revert k₂,
    contrapose!,
    intro k₃,
    exact k₁,
  },
end