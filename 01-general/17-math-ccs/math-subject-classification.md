# Mathematics Subject Classification

https://en.wikipedia.org/wiki/Mathematics_Subject_Classification


Structure
- MSC is a 3 level deep hierarchical scheme
- classification code can have 2, 3 or 5 digits, depending on specificity

Levels
1. The first  level code (FLC) is a 2-digit number.
2. The second level code (SLC) is a letter or a dash.
3. The third  level code (TLC) is 2-digit number.

For example
- `53-xx`: Differential geometry (or just `53`)
- `53Axx`: Classical differential geometry (or just `53A`)
- `53A45`: Vector and tensor analysis

**First level**
- *64 mathematical disciplines* are labeled with a unique 2-digit code.
- there are top-level categories for typical areas and for the overlaps
- mathematical physics is well represented taking categories 70-86
- valid MSC classification codes must have at least FLC.

**Second level**
- SLC are a *letter* or a *dash*.
- 2nd-level is for specific fields of the 1st-level disciplines.
- SLC vary across the disciplines. e.g.:
  - `53` : Differential Geometry's FLC
  - `53A`: Classical Differential Geometry
  - `53B`: Local Differential Geometry
  - `53C`: Global Differential Geometry
  - `53D`: Symplectic Geometry And Contact Geometry

Second level's special subsection
- dash marks the special subsection, always with the same contents:
  - `FLC-00`: General reference works
  - `FLC-01`: Instructional exposition
  - `FLC-02`: Research exposition
  - `FLC-03`: Historical
  - `FLC-04`: Explicit machine computation and programs
  - `FLC-06`: Proceedings, conferences, collections, etc.
- it is not valid to use trailing dash, e.g. "53-", just use `53`

**Third level**
- 3rd-level codes are the most specific subjects
- TLC ending in 99 is "none-of-the-above", "other" placement for every category


## Using the scheme
The AMS recommends that papers submitted to its journals for publication have one primary classification and one or more optional secondary classifications. A typical MSC subject class line on a research paper looks like:    
`MSC Primary 03C90; Secondary 03-02;`
