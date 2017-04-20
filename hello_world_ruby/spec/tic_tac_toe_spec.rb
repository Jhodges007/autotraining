#spec/tic_tac_toe_spec.rb
require 'json'
require Dir.pwd + '/tic_tac_toe.rb'

describe TicTacToe do

  describe ".next_move" do

    before each do
      @ttt = TicTacToe.new
    end

    context "given a board and piece" do


      it "returns the next move" do
        move = JSON.parse('{"board": "xxx******", "piece": "o"}')
        next_move = "xxxo*****"
        expect(@ttt.next_move(move)).to eql(next_move)
      end
    end

    context "2 consecutive in a row" do
      it "block horizontal row 1 xx" do
        move = JSON.parse('{"board": "xx*******", "piece": "o"}')
        next_move = "xxo******"
        expect(@ttt.next_move(move)).to eql(next_move)
      end

      it "block vertical col 1 xx" do
        move = JSON.parse('{"board": "x**x*****", "piece": "o"}')
        next_move = "x**x**o**"
        expect(@ttt.next_move(move)).to eql(next_move)
      end

      it "block diagonal row 1 xx" do
        move = JSON.parse('{"board": "x***x****", "piece": "o"}')
        next_move = "x***x***o"
        expect(@ttt.next_move(move)).to eql(next_move)
      end
    end

    context "row of 2 split" do
      it "block diagonal row 1 xx" do
        move = JSON.parse('{"board": "x**o****x", "piece": "o"}')
        next_move = "x**oo***x"
        expect(@ttt.next_move(move)).to eql(next_move)
      end
    end



  end

end