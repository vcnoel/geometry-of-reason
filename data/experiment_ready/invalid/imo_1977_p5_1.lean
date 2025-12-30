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

  cases h₂ with h₃ h₄,
  { cases h₃ with h₅ h₆,
    { cases h₅ with h₇ h₈,
      { cases h₇ with h₉ h₁₀,
        { cases h₉ with h₁₁ h₁₂,
          { cases h₁₁ with h₁₃ h₁₄,
            { cases h₁₃ with h₁₅ h₁₆,
              { cases h₁₅ with h₁₇ h₁₈,
                { cases h₁₇ with h₁₉ h₂₀,
                  { cases h₁₉ with h₂₁ h₂₂,
                    { cases h₂₁ with h₂₃ h₂₄,
                      { cases h₂₃ with h₂₅ h₂₆,
                        { cases h₂₅ with h₂₇ h₂₈,
                          { cases h₂₇ with h₂₉ h₃₀,
                            { cases h₂₉ with h₃₁ h₃₂,
                              { cases h₃₁ with h₃₃ h₃₄,
                                { cases h₃₃ with h₃₅ h₃₆,
                                 
end
