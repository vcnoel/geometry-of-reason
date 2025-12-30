import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1977_p5
  (a b q r : ℕ)
  (h₀ : r < a + b)
  (h₁ : a^2 + b^2 = (a + b) * q + r)
  (h₂ : q^2 + r = 1977) :
  (abs ((a:ℤ) - 22) = 15 ∧ abs ((b:ℤ) - 22) = 28) ∨ (abs ((a:ℤ) - 22) = 28 ∧ abs ((b:ℤ) - 22) = 15) :=
begin

  have h₃ : q = 44,
  { have h₃' : q = 44,
    { have h₃'' : q^2 = 1936,
      { calc
          q^2 = 1977 - r : by { rw h₁, rw h₂ }
        },
      have h₃''' : q = 44,
      { have h₃'''' : q ≥ 0,
        { calc
            0 ≤ q : by assumption
          },
        have h₃''''' : q^2 = 44^2,
        { have h₃'''''' : q^2 = (44)^2,
          { have h₃''''''' : q = 44,
            { have h₃'''''''' : q^2 = 1936,
              { have h₃''''''''' : q^2 = 44^2,
                { calc
                    q^2 = 1936 : by { rw h₃'' }
                  },
                have h₃'''''''''' : q = 44,
                { calc
                    0 ≤ q : by { rw h₃'''' }
                  },
                have h₃''''''''''' : q^2 = 44^2,
                {
end
