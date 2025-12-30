import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem induction_sum_1oktkp1
  (n : ℕ) :
  ∑ k in (finset.range n), (1 : ℝ) / ((k + 1) * (k + 2)) = n / (n + 1) :=
begin

  induction n with n IH,
  { simp },
  { have h1 : 1 / (n + 1) * (n + 2) = 1 / ((n + 1) * (n + 2)),
    { refl },
    have h2 : 1 / (n + 2) = 1 / (n + 2) * 1 / (n + 1),
    { refl },
    have h3 : 1 / (n + 1) = 1 / (n + 1) * 1 / 1,
    { refl },
    have h4 : (n + 1) / ((n + 1) * (n + 2)) = 1 / (n + 2),
    { refl },
    have h5 : (n + 1) / ((n + 1) * (n + 2)) = 1 / (n + 1) * 1 / (n + 2),
    { refl },
    have h6 : (n + 1) / ((n + 1) * (n + 2)) = 1 / (n + 1) * (1 / (n
end
