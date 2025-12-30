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

  have h₃ : ∀ n, even n → f n = f (n - 1) + 1,
  { intro n,
    cases n,
    { apply h₁ },
    { apply h₁, apply h₃, apply h₂ } },
  have h₄ : ∀ n, odd n → f n = f (n - 2) + 2,
  { intro n,
    cases n,
    { apply h₂ },
    { apply h₂, apply h₃, apply h₂ } },
  have h₅ : ∀ n, even n → f (n + 1) = f n + 1,
  { intro n,
    cases n,
    { apply h₁ },
    { apply h₁, apply h₃, apply h₁ } },
  have h₆ : ∀ n, odd n → f (n + 1) = f n + 1,
  { intro n,
    cases n,
    { apply h₂ },
    { apply h₂, apply h₃, apply h₂ } },
  have h₇ : ∀ n, even n → f (n - 1) = f n - 1,
  { intro n,
    cases
end
