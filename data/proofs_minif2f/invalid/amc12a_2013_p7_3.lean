import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2013_p7
  (s : ℕ → ℝ)
  (h₀: ∀ n, s (n + 2) = s (n + 1) + s n)
  (h₁ : s 9 = 110)
  (h₂ : s 7 = 42) :
  s 4 = 10 :=
begin

  /- Our goal is to prove that s 4 = 10. -/
  /- We are given a recursive relation s (n + 2) = s (n + 1) + s n -/
  /- for all natural numbers n. We also have s 9 = 110 and s 7 = 42 -/
  /- We can use these two equations to compute s 4 using the recursive relation. -/
  /- First, we can compute s 8 using the recursive relation: -/
  have h₃ : s 8 = s 7 + s 7,
    by simp [h₀, h₂],
  /- Then, we can compute s 9 using the recursive relation: -/
  have h₄ : s 9 = s 8 + s 7,
    by simp [h₀, h₃],
  /- Now, we can substitute h₄ and h₁ to get: -/
  have h₅ : 110 = s 8 + s 7,
    by simp [h₄, h₁],
  /- Now, we can substitute h₅ and h₃ to get: -/
  have h₆ : 110 = s 7
end
