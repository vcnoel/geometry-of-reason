import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2017_p7
  (f : ℕ → ℝ)
  (h₀ : f 1 = 2)
  (h₁ : ∀ n, 1 < n ∧ even n → f n = f (n - 1) + 1)
  (h₂ : ∀ n, 1 < n ∧ odd n → f n = f (n - 2) + 2) :
  f 2017 = 2018 :=
begin

  induction n generalizing f,
  case nat.zero {
    exact absurd (by linarith) h₀,
  },
  case nat.succ n {
    by_cases h₃ : even n,
    case true {
      by_cases h₄ : even (n + 1),
      case true {
        apply h₁,
        exact ⟨n.succ_pos, h₃⟩,
      },
      case false {
        apply h₂,
        exact ⟨n.succ_pos, h₃.not_lt⟩,
      },
    },
    case false {
      by_cases h₅ : even (n + 1),
      case true {
        apply h₁,
        exact ⟨n.succ_pos, h₅⟩,
      },
      case false {
        apply h₂,
        exact ⟨n.succ_pos, h₅.not_lt⟩,
      },
    },
  },

end
