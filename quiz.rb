class Question
  attr_accessor :prompt, :answer

  def initialize(prompt, answer)
    @prompt = prompt
    @answer = answer
  end
end

q1 = "what is capital of Nepal? \n a)Kathmandu \n b)Pokhara \n c)Bhaktapur"
q2 = "what is capital of India? \n a)Mumbai \n b)Delhi \n c)Banglore"
q3 = "what is capital of China? \n a)Wuhan \n b)Beging \n c)Sanghai"

questions = [

  Question.new(q1, "a"),
  Question.new(q2, "b"),
  Question.new(q3, "b"),

]

def run_quiz(questions)
  score = 0
  que_length = questions.length()

  for que in questions
    puts (que.prompt)
    print ("Answer:")
    user_answer = gets.chomp()
    if user_answer == que.answer
      score += 1
    end
    puts ""
  end
  puts("you scored " + score.to_s + "/" + que_length.to_s)
end

run_quiz(questions)
