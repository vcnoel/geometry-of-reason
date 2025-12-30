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

  have h₃ : s 6 = 68,
  { rw h₀ at h₂,
    rw h₀ at h₂,
    calc s 7 = s 6 + s 5 : by rw h₀
          ... = (s 5 + s 4) + s 5 : by rw h₀
          ... = 2 * s 5 + s 4 : by rw add_assoc
          ... = s 9 - s 4 : by rw h₀
          ... = 110 - s 4 : by rw h₀,
    rw h₀ at h₁,
    calc s 9 = s 8 + s 7 : by rw h₀
          ... = (s 7 + s 6) + s 7 : by rw h₀
          ... = s 7 + (s 6 + s 5) : by rw add_assoc
          ... = s 7 + (2 * s 5 + s 4) : by rw h₀
          ... = (s 7 + 2 * s 5 + s 4) : by rw add_assoc
          ... = (110 - s 4) + 2 * s 
end
