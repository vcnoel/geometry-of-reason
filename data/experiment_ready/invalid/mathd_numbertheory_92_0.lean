import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_92
  (n : ℕ)
  (h₀ : (5 * n) % 17 = 8) :
  n % 17 = 5 :=
begin

  have h₁ : (5 * n) % 17 = 8,
  from h₀,
  have h₂ : 5 * (n % 17) % 17 = 8,
  by { 
    have h₃ : (n % 17) % 17 = n % 17,
    by { 
      have h₄ : n % 17 < 17,
      by { 
        have h₅ : n < 17 + n % 17,
        by { 
          have h₆ : 17 ≤ 17 + n % 17,
          by { 
            trivial,
          },
          have h₇ : n % 17 < 17 + n % 17,
          by { 
            have h₈ : n % 17 ≤ n % 17,
            by { 
              trivial,
            },
            have h₉ : n % 17 < n % 17 + 17,
            by { 
              have h₁₀ : n % 17 + 17 = n % 17 + 17,
              by { 
                trivial,
              },
              have h₁₁ : n % 17 < n % 17 + 17,

end
