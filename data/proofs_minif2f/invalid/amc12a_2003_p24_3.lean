import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2003_p24 :
  is_greatest {y : ℝ | ∃ (a b : ℝ), 1 < b ∧ b ≤ a ∧ y = real.logb a (a/b) + real.logb b (b/a)} 0 :=
begin

  let s := {y : ℝ | ∃ (a b : ℝ), 1 < b ∧ b ≤ a ∧ y = real.logb a (a/b) + real.logb b (b/a)},
  have hs : ∀ y ∈ s, y ≥ 0,
  { intros y hy,
    rcases hy with ⟨a, b, hb1, hb2, rfl⟩,
    exact real.logb_nonneg a (a/b) + real.logb_nonneg b (b/a) },
  have hsub : s ⊆ {y : ℝ | y ≥ 0},
  { rintros y ⟨a, b, hb1, hb2, rfl⟩,
    exact hs y },
  have hsub2 : {y : ℝ | y ≥ 0} ⊆ {y : ℝ | y ≥ 0},
  { intros y hy,
    exact hy },
  have hsub3 : s = {y : ℝ | y ≥ 0},
  { rintros y (h|h),
    { exact hsub y h },
    { exact hsub2 y h } },
  have hle : ∀ y ∈ s, y ≤ 0,
  { intros y hy,
    rc
end
