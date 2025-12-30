import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12b_2002_p3
  (S : finset ℕ)
  -- note: we use (n^2 + 2 - 3 * n) over (n^2 - 3 * n + 2) because nat subtraction truncates the latter at 1 and 2
  (h₀ : ∀ (n : ℕ), n ∈ S ↔ 0 < n ∧ nat.prime (n^2 + 2 - 3 * n)) :
  S.card = 1 :=
begin

  rw h₀,
  refine finset.card_eq_one_iff_exists_singleton.2 ⟨⟨1, nat.prime (1^2 + 2 - 3 * 1)⟩, _⟩,
  rw h₀,
  simp [h₀]

end
