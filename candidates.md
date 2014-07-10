Candidates
==========

Congratulations! You just raised a seed round of $1M and are now trying to recruit developers for your new tech startup. We have a list of candidates that have applied and need to write a program to help us determine which are qualified.

For the first time, we are writing a multi-file program that uses `require` to load dependencies and is also dependent on a few gems.

The program also defines the Candidates collection as `@candidates` not `candidates`. This is how instance variables are defined. Since we are using multiple files and local variables are not available outside a given file, one of our options is to use instance variables to make sure that the `@candidates` array is available to the `main.rb` file.

### Warmup

Take some time to get acquainted with the code

1. List out the ruby files that are loaded (required) when we run `ruby main.rb`
2. What does the `pp` method do? How is it different from `puts` (try it out!)?
3. Why is ActiveSupport being used (what happens if we take it out)?

### Task 1 - Practice with Pry

Uncomment the `binding.pry` call in `main.rb` and run the `main.rb` code.

Try checking what the variable `@candidates` evaluates to. Tip: since the output will be longer than what can fit on the terminal, it will le t you use arrow keys or space bar to go down.

### Task 2 - Experienced Candidates

Define a method `experienced?` that:

* Takes in a `candidate` (hash)
* Returns `true` if the candidate has 2 years of experience or more
* Returns `false` otherwise

### Task 3 - Finding by `:id`

Define a method `find` that:

* Takes in an `id`
* Returns the `candidate` with that `:id`
* If there is no candidate  with that `id`, it naturally returns `nil`

### Task 4 - "Qualified" Candidates

Define a method `qualified_candidates` that:

* Takes in the collection of `candidates`
* Returns a subset of the `candidates` that meet the following criteria:
  * Are experienced
  * Have 100 or more Github points
  * Know at least Ruby or Python
  * Applied in the last 15 days
  * Are over the age of 17 (18+)

Tip: Consider creating other methods to help keep this one clean

### Task 5 - Sort on Experience and Points

Define a method `ordered_by_qualifications` that:

* Takes in a collection of `candidates`
* Instead of filtering on the candidates, returns them all back but reordered such that:
  * Candidates with the most experience are at the top
  * For Candidates that have the same years of experience, they are further sorted by their number of Github points (highest first)

### Task 6 - REPL-based Menu

Create a REPL that presents the user with a menu where they can type in one of the following commands:

* `find 1`: This will display candidate with id 1
* `all`: This will print them all out to the screen (one per line)
* `qualified`: This will print only qualified candidates, ordered by experience and points (one per line)
* `quit`: Exit the REPL / program

**Bonus**: When printing out candidates, colour the output based on their qualification (green for qualified, red for unqualified)
