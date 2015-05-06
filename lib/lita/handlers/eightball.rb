require "lita"

module Lita
  module Handlers
    class Eightball < Handler

      RESPONSES = [
        "It is certain",
        "It is decidedly so",
        "Without a doubt",
        "Yes - definitely",
        "You may rely on it",
        "As I see it, yes",
        "Most likely",
        "Outlook good",
        "Signs point to yes",
        "Yes",
        "Reply hazy, try again",
        "Ask again later",
        "Better not tell you now",
        "Cannot predict now",
        "Concentrate and ask again",
        "Don't count on it",
        "My reply is no",
        "My sources say no",
        "Outlook not so good",
        "Very doubtful"
      ]

      route %r{8ball|eightball}i, :shake, command: true, help: { "8ball" => "Shakes the eightball" }
      route %r{\?$}, :shake, command: true

      def shake(response)
        response.reply RESPONSES.shuffle.first
      end

    end

    Lita.register_handler(Eightball)
  end
end
