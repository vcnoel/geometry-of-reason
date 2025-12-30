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

  have h₂ : ∀ n, u n - v n = 2,
  from λ n, by
  { calc u n - v n = (2 * n + 2) - (2 * n + 1) : by rw h₀; by rw h₁
     ... = 2 : by ring },
  have h₃ : ∀ n, ∑ k in finset.range(n), u k - v k = n * 2,
  from λ n, by
  { induction n with n IH,
    { calc ∑ k in finset.range(0), u k - v k = 0 : by simp
     ... = 0 * 2 : by ring },
    { calc ∑ k in finset.range(n.succ), u k - v k = (∑ k in finset.range(n), u k - v k) + (u n.succ - v n.succ)
        : by rw finset.sum_add
       ... = (n * 2) + (2)
        : by rw IH; by rw h₂
       ... = (n.succ) * 2 : by ring } },
  have h₄ : ∑ k in
end
