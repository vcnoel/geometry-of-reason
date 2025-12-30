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

  -- we start by using `finset.card_eq_one_iff` and `finset.card_eq_one_iff'`
  have H := finset.card_eq_one_iff' S,
  have H' := finset.card_eq_one_iff S,
  -- we will use `H'` to show `S.card` is 1.
  assume h₁ : S.card = 1,
  -- we will use `H` to show `S.card` is not 2.
  assume h₂ : S.card = 2,
  -- we will use `h₁` and `h₂` to show a contradiction.
  have H'' : ∀ (n : ℕ), n ∈ S ↔ 0 < n ∧ nat.prime (n^2 + 2 - 3 * n),
  from h₀,
  -- we will use `H''` to show that `S` has exactly two elements.
  have H''' : S.card = 2,
  from finset.card_eq_two_iff S H'',
  -- we now have `h₁` and `H'''`.
  have H'''' : (h₁ ∧ H''') = (false, H'''),
  from and_iff_false H''',
  --
end
