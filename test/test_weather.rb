#!/bin/env ruby
# encoding: utf-8

require 'coveralls'
Coveralls.wear!

require 'minitest/autorun'
require 'memory'
require_relative '../answer'
require_relative '../module.weather'

class TestWeather < Minitest::Test

    # TODO: add tests for API success/failure

    def test_weather

        answer = Answer.new("weather", "weather", "amatecha", "weather", "theartificiallounge")

        weather = answer.weather()

        assert_equal true, (weather.instance_of? Hash)
        assert_equal true, (weather["text"].instance_of? String)
        assert_equal "Enter a city name to get current weather conditions from OpenWeather API.\nExample usage: ```ludivine weather in vancouver```", weather["text"]

    end


    def test_weather_in

        answer = Answer.new("weather", "in", "amatecha", "weather in Vancouver", "theartificiallounge")

        weather = answer.in()

        assert_equal true, (weather.instance_of? Hash)
        assert_equal true, (weather["text"].instance_of? String)

    end

end
