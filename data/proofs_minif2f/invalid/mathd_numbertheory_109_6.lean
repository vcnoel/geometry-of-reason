import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_109
  (v : ℕ → ℕ)
  (h₀ : ∀ n, v n = 2 * n - 1) :
  (∑ k in finset.Icc 1 100, v k) % 7 = 4 :=
begin

  -- The sum of the first n odd integers is n^2
  have sum_of_odd_integers : ∀ n : ℕ, ∑ k in finset.Icc 1 n, 2 * k - 1 = n ^ 2,
  { intro n,
    -- By induction on n
    induction n with n IH,
    { -- Base case
      simp [IH] },
    { -- Inductive step
      have IH₂ := IH,
      calc (∑ k in finset.Icc 1 n.succ, 2 * k - 1)
        = (∑ k in finset.Icc 1 n, 2 * k - 1) + (2 * n.succ - 1)
       ... = n ^ 2 + (2 * n.succ - 1)
       ... = (n + 1) ^ 2 } },
  -- Calculate the sum of v k for k in finset.Icc 1 100
  have sum_v : ∑ k in finset.Icc 1 100, v k = 100 ^ 2,
  { apply sum_of_odd_integers },
  -- Calculate the sum of v k for k in finset
end
