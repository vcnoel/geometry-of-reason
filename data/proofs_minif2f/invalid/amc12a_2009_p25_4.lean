import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2009_p25
  (a : ℕ → ℝ)
  (h₀ : a 1 = 1)
  (h₁ : a 2 = 1 / real.sqrt 3)
  (h₂ : ∀ n, 1 ≤ n → a (n + 2) = (a n + a (n + 1)) / (1 - a n * a (n + 1))) :
  abs (a 2009) = 0 :=
begin

  /- First, we need to prove that a n = a (n - 1) = a (n - 2) for all n ≥ 3 -/
  have h₃ : ∀ n ≥ 3, a n = a (n - 1) = a (n - 2),
  { intro n,
    cases n with n,
    { exact absurd n (by linarith), },
    { cases n with n,
      { exact absurd n (by linarith), },
      { exact absurd n (by linarith), }, },
    { cases n with n,
      { exact absurd n (by linarith), },
      { cases n with n,
        { exact absurd n (by linarith), },
        { cases n with n,
          { exact absurd n (by linarith), },
          { cases n with n,
            { exact absurd n (by linarith), },
            { cases n with n,
              { exact absurd n (by linarith), },
              { cases n with n,
                { exact absurd n (by linarith), },
                { cases n with n,
                  { exact absurd n (by linarith), },
                  { cases n with n,
                    { exact absurd n (by
end
