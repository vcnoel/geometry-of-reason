import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_109
  (v : ℕ → ℕ)
  (h₀ : ∀ n, v n = 2 * n - 1) :
  (∑ k in finset.Icc 1 100, v k) % 7 = 4 :=
begin

  have h₁ : ∀ n, v n % 7 = 3,
  { intro n,
    have h₂ : v n = 2 * n - 1,
    { exact h₀ n },
    have h₃ : 2 * n % 7 = (2 * n - 1) % 7 + 1,
    { rw h₂ },
    have h₄ : (2 * n - 1) % 7 = 3,
    { ring },
    have h₅ : 2 * n % 7 = 4,
    { rw h₃, exact h₄ },
    exact h₅ },
  have h₆ : ∀ k in finset.Icc 1 100, v k % 7 = 3,
  { intros k h₇,
    exact h₁ k },
  have h₇ : (∑ k in finset.Icc 1 100, v k % 7) = (∑ k in finset.Icc 1 100, 3),
  { congr, exact h₆ },
  have h₈ : ∑ k in finset.Icc 1 100, v k % 7 = 
end
