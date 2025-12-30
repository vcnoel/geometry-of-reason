import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem numbertheory_sqmod3in01d
  (a : ℤ) :
  (a^2) % 3 = 0 ∨ (a^2) % 3 = 1 :=
begin

  cases a with a,
  { refine (by_cases (a^2) % 3 = 0).or (by_cases (a^2) % 3 = 1),
    { exact by_contradiction (λ h, h rfl),
      { exact by_contradiction (λ h, h rfl) },
    },
    { exact by_contradiction (λ h, h rfl),
      { exact by_contradiction (λ h, h rfl) },
    },
  },
  { refine (by_cases (a^2) % 3 = 0).or (by_cases (a^2) % 3 = 1),
    { exact by_contradiction (λ h, h rfl),
      { exact by_contradiction (λ h, h rfl) },
    },
    { exact by_contradiction (λ h, h rfl),
      { exact by_contradiction (λ h, h rfl) },
    },
  },

end
