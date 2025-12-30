import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2003_p1
  (u v : ℕ → ℕ)
  (h₀ : ∀ n, u n = 2 * n + 2)
  (h₁ : ∀ n, v n = 2 * n + 1) :
  (∑ k in finset.range(2003), u k) - (∑ k in finset.range(2003), v k) = 2003 :=
begin

  simp only [h₀, h₁],
  calc
    (∑ k in finset.range(2003), 2 * k + 2) - (∑ k in finset.range(2003), 2 * k + 1)
      = (∑ k in finset.range(2003), (2 * k + 2) - (2 * k + 1))
     ... = (∑ k in finset.range(2003), 1)
     ... = ∑ k in finset.range(2003), 1
     ... = 2003,

end
