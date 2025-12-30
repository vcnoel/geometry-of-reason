import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_257
  (x : ℕ)
  (h₀ : 1 ≤ x ∧ x ≤ 100)
  (h₁ : 77∣(∑ k in (finset.range 101), k - x)) :
  x = 45 :=
begin

  have h₂ : 77 ∣ (∑ k in finset.range 100, k) := by { 
    -- The sum of all numbers from 1 to 100 is divisible by 77.
    have h₃ : 77 ∣ 100 := by { 
      -- 77 divides 100.
      have h₄ : 77 * 1 + 23 = 100 := by { 
        -- 77 + 23 = 100.
        rfl },
      have h₅ : 77 ∣ 100 := by { 
        -- 77 divides 100.
        exact dvd_of_dvd_add h₄ h₄ },
      exact h₅ },
    have h₆ : 77 ∣ (∑ k in finset.range 100, k) := by { 
      -- The sum of all numbers from 1 to 100 is divisible by 77.
      have h₇ : 77 * 50 + 50 = (∑ k in finset.range 100, k) := by { 
        -- 77 * 50 + 50 = 3850.
        calc
          77 * 50 + 50 = (∑ k in finset
end
