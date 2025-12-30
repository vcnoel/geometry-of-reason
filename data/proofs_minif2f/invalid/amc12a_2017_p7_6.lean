import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2017_p7
  (f : ℕ → ℝ)
  (h₀ : f 1 = 2)
  (h₁ : ∀ n, 1 < n ∧ even n → f n = f (n - 1) + 1)
  (h₂ : ∀ n, 1 < n ∧ odd n → f n = f (n - 2) + 2) :
  f 2017 = 2018 :=
begin

  induction n generalizing f,
  { cases h with h, { exact h },
    { cases h₁ h₂ with h₁ h₂, { exact h₁ },
      { cases h₁ h₂ with h₁ h₂, { exact h₂ },
        { exact absurd (by linarith) (by linarith) } } } },
  { cases h with h, { exact h },
    { cases h₁ h₂ with h₁ h₂, { exact h₁ },
      { cases h₁ h₂ with h₁ h₂, { exact h₂ },
        { exact absurd (by linarith) (by linarith) } } } }

end
