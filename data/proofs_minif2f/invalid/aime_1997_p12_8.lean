import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem aime_1997_p12
  (x : ℝ)
  (h₀ : x = (∑ n in finset.Icc (1 : ℕ) 44, real.cos (n * π / 180)) / (∑ n in finset.Icc (1 : ℕ) 44, real.sin (n * π / 180))) :
  int.floor (100 * x) = 241 :=
begin

  have h₁ := by
  { let a := (∑ n in finset.Icc (1 : ℕ) 44, real.cos (n * π / 180)) / (∑ n in finset.Icc (1 : ℕ) 44, real.sin (n * π / 180)),
    let b := 100 * a,
    let c := int.floor b,
    have h₂ := by
    { have h₃ := by
      { have h₄ := by
        { have h₅ := by
          { have h₆ := by
            { have h₇ := by
              { have h₈ := by
                { have h₉ := by
                  { have h₁₀ := by
                    { have h₁₁ := by
                      { have h₁₂ := by
                        { have h₁₃ := by
                          { have h₁₄ := by
                            { have h₁₅ := by
                              { have h₁₆ := by
                                { have h₁₇ := by
                                  { have h₁₈ := by
                                    { have h₁₉ := by
                                      { have h₂₀ := by

end
