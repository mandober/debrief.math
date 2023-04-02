# Theory of Computation

Theory of Computation - 3 major branches:

1. Automata theory and Formal Languages
  - Automata theory
  - Formal Languages
    - grammar
    - syntax
    - semantics

2. Computability theory (Recursion theory)
  - recursion theory
  - models of computation
  - theory of recursive functions
  - GRFs
  - PRFs

3. Complexity theory (Computational complexity theory)
  - time complexity
  - space complexity




https://en.wikipedia.org/wiki/Automata_theory
https://en.wikipedia.org/wiki/Formal_language
https://en.wikipedia.org/wiki/Computability_Theory
https://en.wikipedia.org/wiki/Computational_complexity_theory

---

## The road from Leibniz to Turing
From syllogisms (συλλογισμοί) to computation (υπολογισμοί)

Engines of Logic
- The development of computers was rapid during the last seventy years.
- What has led to the invention and evolution of computers and CS?
- development was based more on the deep tradition of mathematical logic rather than the various technological innovations.
- Some names related to this journey from syllogisms to computations: Aristotle, Leibniz, Boole, Frege, Russel, Hilbert, Gödel, Turing, Von Neumann.
- The Turing machine is basically a blueprint of computer.

The Journey
- Leibniz was dreaming of reducing all human syllogisms to computations and constructing powerful engines that would execute such computations.
- Frege had created a system of rules that could offer a reasonable explanation for all human deductive arguments.
- In 1930, in his doctoral dissertation, Gödel had proven that Frege's rules were complete, thus answering the question raised by Hilbert two years earlier. - Hilbert had also tried to find a computational procedure by which it would always be possible, given certain premises and a proposed conclusion (written in the symbolism which is now known as First Order Logic) to decide whether this conclusion can be deduced from these premises by using the given rules.
- The problem of finding such a procedure is known as *Entscheidungsproblem* (decision problem). Hilbert was looking for an algorithm of unprecedented range that would reduce all human deductive thought to mere computations. This would be a realization of Leibniz's dream.
- Alan Turing searched for a way to prove that such an algorithm cannot exist.
- It took a strict definition of the term *algorithm* in order to prove it.

## Turing - short biographyical data

- June 23rd 1912: Born in London (Paddington). His father was a successful public servant in India and his mother was a daughter of an important engineer in Madras. The children were raised by a retired colonel until the beginning of the war, after which their mother remained at home, in England.
- 1926: Boarding-school (Sherborne). Turing was shy, introvert, clumsy, untidy, athletic, with an almost illegible hand-writing.
- 1930: His first love, Christopher Morcom, died of tuberculosis.
- 1931-1934: Scholarship for King's College, Cambridge (Hardy, Eddington, Newman)
- 1935: Fellow at Cambridge.
- 1936-1938: PhD (scholarship) at Princeton. He met and associated with Church, Kleene, Gödel, Einstein, Von Neumann.
- 1939: discussions with Wittgenstein.
- 1939-1942: Turing was part of the team at the Bletchley Park that broke the Enigma. Turing was certainly one of the key, if not the key person, but many accounts of this story fail to mention anybody else, pushing the narrative that it was all Turing's endevor - from devising the code-breaking facilitator machine called the bombe, to completely decyphering the Enigma-encoded messages. First, it was the Polish mathematician and cryptologist **Marian Rejewski** who actually invented and constructed the first device known as the "bomba" ("bomba kryptologiczna"). In late 1932, Rejewski managed to reconstruct the Enigma machine solely from the desciptions and the limited documents obtained by French military intelligence. Over the next 7 years, Rejewski and his fellow mathematicians, **Jerzy Różycki** and **Henryk Zygalski**, developed and used techniques and equipment to decrypt the German machine ciphers, even as the Germans introduced modifications to their equipment and encryption procedures. Five weeks before the outbreak of WW2, they *shared* their achievements with the French and British, thus enabling the brits to begin reading the German encrypted messages seven years after Rejewski's original reconstruction of the machine. The intelligence gained by the British from the Enigma decrypts (under the umbrella of the operation code name "Ultra") contributed - even decisively so - to the defeat of Germany. It was estimated that the breaking of the Enigma has shorten the war by at least 2 years.
- The bombe machines constructed at the Bletchley Park were based on Rejewski's work. The engineering and construction of the first bombe made at Bletchley Park was the work of **Harold Keen** of the British Tabulating Machine Company. That first version was code-named "Victory" and was ready in March 1940. The second version, code-name "Agnus Dei", was installed by August 1940. It contained a major impovement contributed by **Gordon Welchman**, one of the members of the team led by Turing.
- Turing's contribution in breaking the Enigma and thus crucially influencing the outcome of WW2 were kept a secret for 50 years.
- 1947: Meeting with Zuse
- 1948: Design of Mark I, `ACE`
- 1951: A brief encounter with a 19 year man, who then robbed him, thereby making the plot of the movie "Immitation Game" that continues to push the narriative in which Turing invented the bomba machine and then singlehandedly pwned the Enigma.
- 1952: Convicted for being gay (code-breaking Nazi encryption while gay). The court gave him a "choice" between doing the time or a cure for homosexuality. Turing chose the latter, which turned out to be a worse alternative, causing a disaster in his immune and hormonal system, influencing his intellect and creativity, inducing depression, overall having a bad effect on Turing that drove him to suicide.
- 1953: Restrictive measures against Turing. Persona non grata. Denied security clearences. Vacation in Greece.
- June 7th 1954: Turing commits suicide by poison (depicted in the play "Breaking the Code").
- 1966: A new award for the important achievements in computer science is established, named *the Turing Award*. It is the equivalent of the Noble prize in other sciences; the equivalent for math is called the *Field's medal* (i.e. Nobel didn't think math was a real science).
- Sep 10th 2009: The British Government (fronted by Gordon Brown) publicly apologizes to the world for killing one of the greatest minds ever. If they took that opportunity to apologize for their other transgressions, that broadcast would still go on (relative to 2022).
