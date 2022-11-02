num=sample.int(20,1)
guess=as.integer(readline('Guess a number: '))
count=1
while (guess!=num) {
  guess=as.integer(readline('Another guess: '))
  count <- count + 1
}
cat('Correct guess after', count, 'time(s)')