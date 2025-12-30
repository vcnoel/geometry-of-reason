import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12b_2004_p3
  (x y : ℕ)
  (h₀ : 2^x * 3^y = 1296) :
  x + y = 8 :=
begin

  have h₁ : 1296 = 2^5 * 3^3 := by simp [power, nat.pow, nat.pow_le_iff_le_one, le_refl],
  have h₂ : x = 5 := by
    { have h₃ : 2^x = 2^5 := by
        { have h₄ : 2^x * 3^y = 2^5 * 3^y := by
            { rw h₀ },
          have h₅ : 2^(x - 5) * 2^5 * 3^y = 2^5 * 3^y := by
            { rw [pow_add, h₄] },
          have h₆ : 2^(x - 5) = 1 := by
            { have h₇ : 2^5 * 3^y = 2^5 := by
                { rw h₅ },
              have h₈ : 2^5 * 3^y = 2^(5 + log 3 2) := by
                { rw [log_eq_pow, h₇] },
              have h₉ : log 3 2
end
