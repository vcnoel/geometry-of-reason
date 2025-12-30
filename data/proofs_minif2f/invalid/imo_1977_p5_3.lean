import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1977_p5
  (a b q r : ℕ)
  (h₀ : r < a + b)
  (h₁ : a^2 + b^2 = (a + b) * q + r)
  (h₂ : q^2 + r = 1977) :
  (abs ((a:ℤ) - 22) = 15 ∧ abs ((b:ℤ) - 22) = 28) ∨ (abs ((a:ℤ) - 22) = 28 ∧ abs ((b:ℤ) - 22) = 15) :=
begin

  have h₃ : (q, r) = (r, q),
  { apply eq_of_congr_arg,
    rw [h₁, h₁, mul_comm],
    congr,
    { rw add_comm },
    { rw mul_comm },
    { exact h₀ },
    { exact h₀ },
    { exact h₀ },
    { exact h₀ },
    { exact h₀ },
    { exact h₀ },
    { exact h₀ },
    { exact h₀ },
    { exact h₀ },
    { exact h₀ },
    { exact h₀ },
    { exact h₀ },
    { exact h₀ },
    { exact h₀ },
    { exact h₀ },
    { exact h₀ },
    { exact h₀ },
    { exact h₀ },
    { exact h₀ },
    { exact h₀ },
    { exact h₀ },
    { exact h₀ },
    { exact h₀ },
    { exact h₀ },
    { exact h₀ },
    { exact h₀ },
    { exact h₀ },
    { exact h₀ },
    { exact h₀ },
    { exact h₀ },
    { exact h₀ },
    { exact h₀ },
    { exact h₀ },
    { exact h₀ },

end
