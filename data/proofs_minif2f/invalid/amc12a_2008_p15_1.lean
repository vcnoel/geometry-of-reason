import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2008_p15
  (k : ℕ)
  (h₀ : k = 2008^2 + 2^2008) :
  (k^2 + 2^k) % 10 = 6 :=
begin

  have h₁ : k = 2 * 2^2008 + 2^2008,
  { rw [h₀] },
  have h₂ : k = 2^(2008+1),
  { rw [pow_succ, h₁] },
  have h₃ : k^2 + 2^k = 2^(2*2008+2) + 2^(2008+1),
  { rw [h₂, pow_two, pow_two, pow_two, pow_two, pow_two] },
  have h₄ : 2^(2*2008+2) = 4 * 2^(2*2008) = 4 * (2^2008)^2,
  { rw [pow_mul, pow_mul, pow_mul] },
  have h₅ : 2^(2008+1) = 2 * 2^2008,
  { rw [pow_succ] },
  have h₆ : 4 * (2^2008)^2 = 4 * 2^(2*2008),
  { rw [pow_mul, pow_mul] },
  have h₇ : 4 * 2^(2*2008) = 
end
