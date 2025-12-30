import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_156
  (n : ℕ)
  (h₀ : 0 < n) :
  nat.gcd (n + 7) (2 * n + 1) ≤ 13 :=
begin

  by_cases h₁ : (n + 7) % 2 = 0,
  { by_cases h₂ : (n + 7) % 4 = 0,
    { have h₃ : (n + 7) % 4 = 0,
      { assumption },
      have h₄ : (n + 7) % 2 = 0,
      { assumption },
      have h₅ : (n + 7) % 2 = 0,
      { assumption },
      have h₆ : (n + 7) % 4 = 0,
      { assumption },
      have h₇ : (n + 7) % 4 = 0,
      { assumption },
      have h₈ : (n + 7) % 4 = 0,
      { assumption },
      have h₉ : (n + 7) % 2 = 0,
      { assumption },
      have h₁₀ : (n + 7) % 4 = 0,
      { assumption },
      have h₁₁ : (n + 7) % 4 = 0,
      { assumption },
      have h₁₂ : (n + 
end
