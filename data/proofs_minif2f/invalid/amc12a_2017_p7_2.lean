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

  have h₃ : 2017 = 1 + 2016,
  { refl },
  have h₄ : 2016 = 2 * 1008,
  { calc 2016 = 2 * 1008 : by calc 2 * 1008 = 2 * (2 * 504) : rfl
                                        ... = 2 * (2 * (2 * 252)) : rfl
                                        ... = 2 * (2 * (2 * (2 * 63))) : rfl
                                        ... = 2 * (2 * (2 * (2 * (2 * 31 + 1)))) : rfl
                                        ... = 2 * (2 * (2 * (2 * (2 * 32)))) : rfl
                                        ... = 2 * (2 * (2 * (2 * (2 * (2 * 16))))) : rfl
                                        ... = 2 * (2 * (2 * (2 * (2 * (2 * (2 * 8))))) : rfl
                                        ... = 2 * (2 * (2 * (2 * (2 * (2 * (2 * (2 * 4)))))) : rfl
                                        
end
