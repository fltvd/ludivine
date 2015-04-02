#!/bin/env ruby
# encoding: utf-8

class Answer

    def initialize(moduleName, methodName, username, message, channel)

        @username = username
        @message  = message
        @username = username
        @message  = message
        @channel  = channel
        @memory   = Memory.new()

    end

    def unknownModule

        return Hash["text" => "Huh? #{@username}, what do you want me to do?"]

    end

    def unknownMethod

        return Hash["text" => "Huh? Sorry #{@username}, *#{@moduleName}* does not have a method called *#{@methodName}*."]

    end

    def hello

        return Hash["text" => "Hello #{@username}, nice to see you."]

    end

    def xoka

        return Hash["text" => "Xoka #{@username}, nice to see you."]

    end

    def hey

        return Hash["text" => "hey #{@username}."]

    end

    def hi

        return Hash["text" => "hi #{@username}!"]

    end

    def sorry

        return Hash["text" => "Don't worry about it *#{@username}*."]

    end

    def where

        return Hash["text" => "You are in *#{@channel}*."]

    end

    def rules

        return Hash["text" => "Rule #1: You must find yourself a monochromatic avatar.\nRule #2: I, *Ludivine*, am above the law.\n"]

    end

    def forget

        return Hash["text" => "Ludivine never forgets."]

    end

    def bye

        return Hash["text" => "See you around "+@username+"."]

    end

    def cya

        return Hash["text" => "Bye bye "+@username+"!"]

    end

end
