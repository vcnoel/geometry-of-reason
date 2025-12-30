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

  have h₁ : n % 8 = 7 → n % 4 = 3,
  { assume h₁,
    have h₂ : n % 4 = 3,
    { have h₃ : 3 % 4 = 3,
      { norm_num },
      have h₄ : (n % 8 = 7 → n % 8 = 7) ∧ (n % 4 = 3 → n % 4 = 3),
      { and.intro h₃ h₁ },
      exact h₄.left },
    exact h₂ },
  exact h₁ h₀,

end
