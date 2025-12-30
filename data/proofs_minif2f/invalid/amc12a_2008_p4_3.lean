import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2008_p4 :
  ∏ k in finset.Icc (1 : ℕ) 501, ((4 : ℝ) * k + 4) / (4 * k) = 502 :=
begin

  have h1 : ∀ k ∈ finset.Icc (1 : ℕ) 501, (4 * k + 4) / (4 * k) = 1 + 1 / k,
  { intro k,
    intro h2,
    rw [h2],
    ring },
  have h2 : ∏ k in finset.Icc (1 : ℕ) 501, 1 + 1 / k = (502 : ℝ),
  { rw [finset.Icc_eq_range],
    have h3 : ∀ k in range (501 : ℕ), 1 + 1 / k = 1 + 1 / (k + 1),
    { intro k,
      intro h4,
      rw [h4],
      ring },
    have h4 : ∀ k in range (501 : ℕ), 1 / (k + 1) = 1 / k - 1 / (k + 1),
    { intro k,
      intro h5,
      rw [h5],
      ring },
    have h5 : ∀ k in range (501 : ℕ), 1 / k = 1 + 1 / (k + 1),
    { intro k,
      intro h
end
