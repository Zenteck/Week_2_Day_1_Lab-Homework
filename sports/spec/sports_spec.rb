require ('minitest/autorun')
require_relative ('../sports.rb')

class TestSports < MiniTest::Test

  def test_create_team
    new_team = Team.new("Kerbals", ["Jeb", "Bob", "Bill", "Val"], "Gene")
  end

  def test_team_name
    new_team = Team.new("Kerbals", ["Jeb", "Bob", "Bill", "Val"], "Gene")
    assert_equal("Kerbals", new_team.team_name)
  end

  def test_players
    new_team = Team.new("Kerbals", ["Jeb", "Bob", "Bill", "Val"], "Gene")
    assert_equal(["Jeb", "Bob", "Bill", "Val"], new_team.players)
  end

  def test_coach
    new_team = Team.new("Kerbals", ["Jeb", "Bob", "Bill", "Val"], "Gene")
    assert_equal("Gene", new_team.coach)
  end

  def test_set_coach
    new_team = Team.new("Kerbals", ["Jeb", "Bob", "Bill", "Val"], "Gene")
    new_team.coach = ("Felipe")
    assert_equal("Felipe", new_team.coach)
  end

  def test_add_player
    new_team = Team.new("Kerbals", ["Jeb", "Bob", "Bill", "Val"], "Gene")
    new_team.players.push("Buzz")
    assert_equal(5, new_team.players.length)
  end
#What is going on here? Why does this appear to work? Seriously!

ß



end

# def test_cohort
#   new_student = Student.new("Gordon", "G17")
#   assert_equal("G17", new_student.cohort)
# end
