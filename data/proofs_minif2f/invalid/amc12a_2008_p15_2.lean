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

  have h₁ : 2008^2 + 2^2008 = 2^2008 * (1 + 2008^2 / 2^2008),
  by { rw h₀, ring },
  have h₂ : 1 + 2008^2 / 2^2008 = 1 + 2^2008 / 2^2008,
  by { ring },
  have h₃ : 2^2008 / 2^2008 = 1,
  by { ring },
  have h₄ : 1 + 2^2008 / 2^2008 = 2,
  by { rw h₂, rw h₃, ring },
  have h₅ : (1 + 2008^2 / 2^2008) = 2,
  by { rw h₂, ring },
  have h₆ : (2008^2 + 2^2008) = 2^2008 * 2,
  by { rw h₁, ring },
  have h₇ : (2008^2 + 2^2008) % 10 = 4,
  by { rw h₆, ring },
 
end
