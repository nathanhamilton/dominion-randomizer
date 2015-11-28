module DominionBasic
  BASIC_CARDS = {
    1 => {name: 'Adventurer', type: 'action'},
    2 => {name: 'Bureaucrat', type: ['action', 'attack']},
    3 => {name: 'Cellar', type: 'action'},
    4 => {name: 'Chancellor', type: 'action'},
    5 => {name: 'Chapel', type: 'action'},
    6 => {name: 'Council Room', type: 'action'},
    7 => {name: 'Feast', type: 'action'},
    8 => {name: 'Festival', type: 'action'},
    9 => {name: 'Laboratory', type: 'action'},
    10 => {name: 'Library', type: 'action'},
    11 => {name: 'Market', type: 'action'},
    12 => {name: 'Militia', type: ['action', 'attack']},
    13 => {name: 'Mine', type: 'action'},
    14 => {name: 'Moat', type: ['action', 'reaction']},
    15 => {name: 'Moneylender', type: 'action'},
    16 => {name: 'Remodel', type: 'action'},
    17 => {name: 'Smithy', type: 'action'},
    18 => {name: 'Spy', type: ['action', 'attack']},
    19 => {name: 'Thief', type: ['action', 'attack']},
    20 => {name: 'Throne Room', type: 'action'},
    21 => {name: 'Village', type: 'action'},
    22 => {name: 'Witch', type: ['action', 'attack']},
    23 => {name: 'Woodcutter', type: 'action'},
    24 => {name: 'Workshop', type: 'action'}
  }

  def basic_cards
    BASIC_CARDS
  end
end
