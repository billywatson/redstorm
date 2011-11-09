class RandomSentenceSpout < RedStorm::SimpleSpout
  set :is_distributed => true
  output_fields :word

  on_next_tuple {@sentences[rand(@sentences.length)]}

  on_init do
    @sentences = [
      "the cow jumped over the moon",
      "an apple a day keeps the doctor away",
      "four score and seven years ago",
      "snow white and the seven dwarfs",
      "i am at two with nature"
    ]
  end
end
