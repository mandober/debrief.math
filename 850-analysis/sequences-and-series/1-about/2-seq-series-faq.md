# Sequences and Series :: FAQ

## Non-empty sequences
A sequence cannot be empty and it cannot have empty slots. All slots are filled and indexed in order, starting from the initial value (1 or 0). No slots or indices may be skipped over. Although sequences and series can be viewed as representing a collection of elements in the same way, differing only in the used delimiter, the issue of emptiness may only possibly pertain to sequences, series cannot be empty. A collection related to a sequence is a tuple, but a tuple may be empty - then it represents an *empty product*. Logically and type-theoretically, the empty tuple is often denoted literally by `()` or by `𝟙`. It represents the unit type (aka type one). The unit type is a singleton type, meaning it contains a single element, often denoted `*`, so `* : 𝟙`. Along the sam line, the empty type holds no elements and logically represents an *empty sum*. However, these notions have little to do with sequences.

## Sequence as a container
A sequence contains elements, so it acts as a container. However, unlike a set, which may be an element as well as a container, sequences cannot - sequences are always only containers.
