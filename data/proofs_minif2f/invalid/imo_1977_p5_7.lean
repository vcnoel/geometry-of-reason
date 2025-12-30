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

  cases q,
  { cases r,
    { cases a,
      { cases b,
        { cases h₁,
          { rw h₁ at h₂,
            ring_nf at h₂,
            have h₃ : r = 1977 - q^2,
            { rw h₂ },
            have h₄ : r < 1977,
            { apply h₃ },
            have h₅ : r < q^2 + r,
            { apply h₄ },
            have h₆ : r = 0,
            { apply h₅ },
            have h₇ : q = 1977,
            { apply h₆ },
            have h₈ : q^2 = 1977^2,
            { apply h₇ },
            have h₉ : q^2 + r = 1977^2,
            { apply h₈ },
            have h₁₀ : (a + b) * q + r = 1977^2,
            { apply h₁ },
            have h₁₁ : a + b = 1977,
            { apply h₁₀ },
            have h₁₂ : a + b > 0,
            { apply h₁₁ },
           
end
