import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem numbertheory_sqmod3in01d
  (a : ℤ) :
  (a^2) % 3 = 0 ∨ (a^2) % 3 = 1 :=
begin

  have h1 : ∀ a : ℤ, (a^2) % 3 = ((a % 3)^2) % 3,
    by {
      intro a,
      have h1a : (a^2) % 3 = ((a % 3)^2) % 3,
        by {
          have h1a' : (a % 3) * (a % 3) = ((a % 3)^2),
            by {
              ring,
            },
          have h1a'' : (a^2) % 3 = ((a % 3)^2) % 3,
            by {
              have h1a''' : (a^2) % 3 = (a % 3) * (a % 3) % 3,
                by {
                  have h1a'''' : (a % 3) * (a % 3) % 3 = ((a % 3) * (a % 3)) % 3,
                    by {
                      ring,
                    },
                  exact h1a'',
                },
              exact h1a''',
            },
          exact h1a''',
        },
      exact h1a,
   
end
