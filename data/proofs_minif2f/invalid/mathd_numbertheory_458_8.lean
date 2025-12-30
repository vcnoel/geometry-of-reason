import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_458
  (n : ℕ)
  (h₀ : n % 8 = 7) :
  n % 4 = 3 :=
begin

  -- 1 / 2
  have h₁ : n % 8 = 7 → n % 4 = 3,
  { assume h₁ : n % 8 = 7,
    -- 1 / 2
    have h₂ : n % 8 = 7 → n % 4 = 3,
    { assume h₂ : n % 8 = 7,
      -- 1 / 2
      have h₃ : n % 8 = 7 → n % 4 = 3,
      { assume h₃ : n % 8 = 7,
        -- 1 / 2
        have h₄ : n % 8 = 7 → n % 4 = 3,
        { assume h₄ : n % 8 = 7,
          -- 1 / 2
          have h₅ : n % 8 = 7 → n % 4 = 3,
          { assume h₅ : n % 8 = 7,
            -- 1 / 2
            have h₆ : n % 8 = 7 → n % 4 = 3,
            { assume h₆ :
end
