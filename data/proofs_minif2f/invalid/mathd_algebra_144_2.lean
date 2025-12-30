import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_144
  (a b c d : ℕ)
  (h₀ : 0 < a ∧ 0 < b ∧ 0 < c ∧ 0 < d)
  (h₀ : (c : ℤ) - b = d)
  (h₁ : (b : ℤ) - a = d)
  (h₂ : a + b + c = 60)
  (h₃ : a + b > c) :
  d < 10 :=
begin

  -- Let's try to get the result
  -- First, we have c - b = d, so c = b + d
  have h₄ : c = b + d := by { rw h₀, },
  -- Now, we have b - a = d, so b = a + d
  have h₅ : b = a + d := by { rw h₁, },
  -- Substitute h₅ into h₄
  have h₆ : c = a + d + d := by { rw h₅ at h₄, },
  -- Simplify h₆
  have h₇ : c = a + 2 * d := by { rw mul_two at h₆, },
  -- Now, we have a + b + c = 60
  have h₈ : a + (a + d) + (a + 2 * d) = 60 := by { rw h₅, rw h₇, },
  -- Simplify h₈
  have h₉ : 3 * a + 3 * d = 60 := by { rw add_assoc at h₈, },
  -- Divide both sides of h
end
