import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1964_p1_1
  (n : ℕ)
  (h₀ : 7 ∣ (2^n - 1)) :
  3 ∣ n :=
begin

  cases n,
  { exact nat.succ_pos n },
  { intro h,
    exact absurd h (nat.not_pos (n-1)) },
  { have h₁ : 7 ∣ (2^(n-1) - 1), from (n-1).rec (h₀),
    have h₂ : 3 ∣ n-1, from imo_1964_p1_1 (n-1) h₁,
    exact nat.succ_pred_eq h₂ },

end
