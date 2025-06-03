# Finding the error of sums

Considering a converging infinite series with the infnite sum equal to `S`, the limit of the sequence of the partial sums of that series, as `n` tends to infinity, will be `S` as well. However, if `n` doesn't go to infinity, that is, if we take a partial sum of the series up to some term with index `N`, then there will be a difference between it and `S`. That difference is what we call an error and denote by `Rₙ`.

`lim Sₙ = S`, so `lim S - Sₙ = 0`, and `Rₙ = S - Sₙ`

With really big `N`, the partial sum will be very close to the infinite sum `S`, but not exactly the same.

This whole nonsense with finding the error is about figuring out the number of terms it takes (to sum up) to achieve a certain accuracy.


*For alternating series only*, it holds that this error will always be less then or equal to the next term in the series - the term with index `N+1`. Index `N` identifies the last term added to the sum; we have summed all the terms from 1 to `N`, obtaining the partial sum `Sₙ`. Because the series is alternating, the next term (term with index `N+1`) may be added or subtracted from the partial sum, but it always holds that `Rₙ` is less then or equal to that term.

    Rₙ = |S - Sₙ| ≤ |aₙ﹢₁|
