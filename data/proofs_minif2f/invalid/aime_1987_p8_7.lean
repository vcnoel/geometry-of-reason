import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem aime_1987_p8
  (n : ℕ)
  (h₀ : 0 < n)
  (h₁ : ∃! k, (8 : ℝ) / 15 < n / (n + k) ∧ (n : ℝ) / (n + k) < 7 / 13) :
  n ≤ 112 :=
begin

  by_cases h₂ : (8 : ℝ) / 15 < n / (n + 0),
  {  -- We know (8 : ℝ) / 15 < n / (n + 0) from h₁,
    -- so we know (8 : ℝ) / 15 < n / n,
    have h₃ : (8 : ℝ) / 15 < 1,
    {  -- This follows directly from the definition of division
      bylinarith,
    },
    have h₄ : (8 : ℝ) / 15 < n,
    {  -- This follows directly from h₂ and h₃
      bylinarith,
    },
    have h₅ : n ≥ 8,
    {  -- This follows directly from h₄
      bylinarith,
    },
    have h₆ : n + 0 ≥ 8,
    {  -- This follows directly from h₅
      bylinarith,
    },
    have h₇ : n / (n + 0) = 1,
    {  -- This follows directly from the definition of division
      bylinarith,
    },
    have h₈ : n / (n + 
end
