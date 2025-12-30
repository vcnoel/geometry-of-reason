import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2010_p22
  (x : ℝ) :
  49 ≤ ∑ k in finset.Icc 1 119, abs (↑k * x - 1) :=
begin

  have h1 : ∀ (k : ℕ) (hk : 1 ≤ k) (hk' : k ≤ 119), ∑ k in finset.Icc 1 119, abs (↑k * x - 1) ≥ abs (↑k * x - 1),
  { intros k hk hk',
    exact abs_nonneg (abs (↑k * x - 1)) },
  have h2 : ∀ (k : ℕ) (hk : 1 ≤ k) (hk' : k ≤ 119), ∑ k in finset.Icc 1 119, abs (↑k * x - 1) ≥ 0,
  { intros k hk hk',
    exact abs_nonneg (abs (↑k * x - 1)) },
  have h3 : ∀ (k : ℕ) (hk : 1 ≤ k) (hk' : k ≤ 119), ∑ k in finset.Icc 1 119, abs (↑k * x - 1) ≥ 0,
  { intros k hk hk',
    exact abs_nonneg (abs (↑k * x - 1)) },
  have h4 : ∀ (k : ℕ) (
end
