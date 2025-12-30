import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem aimeII_2020_p6
  (t : ℕ → ℚ)
  (h₀ : t 1 = 20)
  (h₁ : t 2 = 21)
  (h₂ : ∀ n ≥ 3, t n = (5 * t (n - 1) + 1) / (25 * t (n - 2))) :
  ↑(t 2020).denom + (t 2020).num = 626 :=
begin

  induction 2020 with n ih generalizing t,
  { apply le_antisymm,
    { refine (t 1).num + (t 1).denom * (t 1).num ≤ t 1,
      { rw h₀, },
      { rw h₀, },
      { ring, }, },
    { refine le_of_eq ((t 1).num + (t 1).denom * (t 1).num) = _,
      { rw h₀, }, } },
  { apply le_antisymm,
    { refine (t (n + 1)).num + (t (n + 1)).denom * (t (n + 1)).num ≤ t (n + 1),
      { rw h₂,
        { rw h₁,
          { rw h₀, },
          { ring, }, },
        { ring, }, },
      { rw h₂,
        { rw h₁,
          { rw h₀, },
          { ring, }, },
        { ring, }, },
      { ring, }, },
    { refine le_of_eq ((t (n + 1)).num + (t (n + 1)).denom * (t (
end
