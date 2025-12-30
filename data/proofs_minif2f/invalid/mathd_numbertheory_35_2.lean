import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_35
  (S : finset ℕ)
  (h₀ : ∀ (n : ℕ), n ∣ (nat.sqrt 196)) :
  ∑ k in S, k = 24 :=
begin

  apply finset.sum_eq_single (24),
  { -- n = 24
    apply le_antisymm,
    { -- n ≤ 24
      apply nat.sqrt_le,
      apply pow_le_pow,
      { -- n^2 ≤ 196
        intro n,
        apply le_trans,
        { -- n^2 ≤ 196
          apply h₀,
        },
        { -- 196 ≤ n^2
          apply pow_le_pow,
          { -- 14 ≤ n
            intro n,
            apply le_trans,
            { -- 14 ≤ n
              apply h₀,
            },
            { -- n ≤ 14
              apply nat.sqrt_le,
            },
          },
          { -- 14^2 = 196
            apply pow_eq_pow,
            apply nat.sqrt_eq,
            apply pow_eq_pow,
            apply nat.succ_eq,
            apply nat.one_eq,
          },
        },
      },
    },
    { -- 24 ≤ n
      apply nat.sqrt_le,
      apply pow_le_pow,
      { -- 24^2 = 576 ≤ 196
        apply pow_eq_pow,
        apply nat.succ_eq,
        apply nat.one_eq,
      },
    },
  },

end
