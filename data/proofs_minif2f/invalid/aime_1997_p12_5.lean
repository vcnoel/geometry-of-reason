import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem aime_1997_p12
  (x : ℝ)
  (h₀ : x = (∑ n in finset.Icc (1 : ℕ) 44, real.cos (n * π / 180)) / (∑ n in finset.Icc (1 : ℕ) 44, real.sin (n * π / 180))) :
  int.floor (100 * x) = 241 :=
begin

  have h₁ : ∀ n : ℕ, 0 ≤ n * π / 180 ∧ n * π / 180 ≤ π := by { intros n, split, { exact (n * π / 180) * 180 / 180 * 180, exact (n * π / 180) * 180 / 180 },
    have h₂ : ∀ n : ℕ, (n * π / 180) * 180 / 180 = n, from by { intro n, ring },
    exact (n * π / 180) * 180 / 180 * 180, exact (n * π / 180) * 180 / 180 },
  have h₃ : ∀ n : ℕ, real.cos (n * π / 180) = cos (n * π / 180) := by { intro n, refl },
  have h₄ : ∀ n : ℕ, real.sin (n * π / 180) = sin (n * π / 180) := by { intro n, refl },
  have h₅ : (∑ n in finset.Icc (1 : ℕ) 44, real.cos (n * π / 180)) = (∑ n
end
