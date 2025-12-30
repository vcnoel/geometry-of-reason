import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2019_p21
  (z : ℂ)
  (h₀ : z = (1 + complex.I) / real.sqrt 2) :
  (∑ k in finset.Icc 1 12, (z^(k^2))) * (∑ k in finset.Icc 1 12, (1 / z^(k^2))) = 36 :=
begin

  rw finset.sum_conj at h₀,
  have h₀' : z^2 = 1,
  { rw h₀,
    simp [pow_two],
    ring_nf, },
  have h₀'' : z = 1 / z,
  { rw h₀',
    simp [pow_inv_eq_one_div], },
  have h₁ : ∀ k in finset.Icc 1 12, z^(k^2) = 1,
  { intros k hk,
    rw h₀' at hk,
    simp at hk,
    exact hk, },
  have h₂ : ∀ k in finset.Icc 1 12, 1 / z^(k^2) = 1,
  { intros k hk,
    rw h₀'' at hk,
    simp at hk,
    exact hk, },
  have h₃ : (∑ k in finset.Icc 1 12, (z^(k^2))) = 12,
  { simp at h₁,
    exact finset.sum_const 12, },
  have h₄ : (∑ k in finset.Icc 1 12, (1 / z^(k^2))) = 12,
  { simp
end
