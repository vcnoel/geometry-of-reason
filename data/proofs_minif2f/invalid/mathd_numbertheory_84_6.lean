import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_84 :
  int.floor ((9:ℝ) / 160 * 100) = 5 :=
begin

  -- 1 / 160 * 100 = 5 / 16
  have h1 := by {
    ring_nf,
    field_simp,
    ring_nf,
  },
  -- 5 / 16 < 5
  have h2 := by {
    -- 5 / 16 < 5 / 1
    have h21 := by {
      field_simp,
      linarith,
    },
    -- 5 / 1 > 0
    have h22 := by {
      field_simp,
      linarith,
    },
    -- 0 < 5 / 16
    have h23 := by {
      -- 5 / 16 > 0 / 1
      have h231 := by {
        field_simp,
        linarith,
      },
      -- 0 / 1 = 0
      have h232 := by {
        field_simp,
        ring_nf,
      },
      -- 0 < 5 / 16
      exact h231.trans (h232.symm ▸ h22),
    },
    -- 5 / 16 < 5
    exact h21.trans h23,
  },
  -- 9 / 160 * 100
end
