import secrets
import sys

SUITS_NAME = ["Spades", "Diamonds", "Hearts", "Clubs"]
SUITS_SYMBOLS = ["♠", "♦", "♥", "♣"]
CARD_VALUES = {
    "Ace": 11,  # value of the ace is high until it needs to be low
    "2": 2,
    "3": 3,
    "4": 4,
    "5": 5,
    "6": 6,
    "7": 7,
    "8": 8,
    "9": 9,
    "10": 10,
    "Jack": 10,
    "Queen": 10,
    "King": 10,
}


class Shoe:
    def __init__(self, number_of_decks=1):
        self.number_of_decks = number_of_decks
        self.cards = []
        self.populate_deck()

    def draw_card(self):
        card_index = secrets.randbelow(len(self.cards))
        return self.cards.pop(card_index)

    def populate_deck(self):
        self.cards.clear()
        for _ in range(self.number_of_decks):
            for suit in SUITS_NAME:
                for rank in CARD_VALUES.keys():
                    self.cards.append(Card(suit, rank))


class Game:
    def __init__(
        self, ai_player_count: int = 4, deck_count: int = 2, start_bankroll: int = 100
    ):
        self.shoe = Shoe(number_of_decks=deck_count)
        self.ai_player_count = ai_player_count
        self.bankroll = start_bankroll

    def ai_player(self, ai_number):
        hand = Hand()
        hand.add_card(self.shoe.draw_card())
        hand.add_card(self.shoe.draw_card())

        while hand.get_value() <= 17:
            new_card = self.shoe.draw_card()
            hand.add_card(new_card)

        print(hand.print_hand_as_ascii())
        value = hand.get_value()
        if 18 <= value <= 21:
            print(f"AI{ai_number} stands with a total of {value}")
        else:
            print(f"AI{ai_number} busts as they have over 21")

    def game_engine(self) -> bool:
        """
        Simulates a single game. Returns True if the player wins, False otherwise.
        """
        print("Dealer's hand:")
        dealer_hand = Hand()
        dealer_hand.add_card(self.shoe.draw_card())
        dealer_hand.add_card(self.shoe.draw_card())
        print(dealer_hand.print_hand_as_ascii(first_card_hidden=True))

        # Need AI to enable card counting by player
        for i in range(1, self.ai_player_count + 1):
            print(f"\nAI {i}:")
            self.ai_player(i)

        self.handle_betting()

        print("\nPlayer's hand:")
        self.player_hand = Hand()
        self.player_hand.add_card(self.shoe.draw_card())
        self.player_hand.add_card(self.shoe.draw_card())

        print(self.player_hand.print_hand_as_ascii())
        self.handle_player_input()

        player_val = self.player_hand.get_value()
        if player_val > 21:
            print("Player busts as they have over 21")
            return False

        print("Dealer's face up hand:")
        print(dealer_hand.print_hand_as_ascii())

        while dealer_hand.get_value() <= 17:
            dealer_hand.add_card(self.shoe.draw_card())
            print("Dealer draws a card. Dealer's new hand:")
            print(dealer_hand.print_hand_as_ascii())

        dealer_val = dealer_hand.get_value()
        if dealer_val > 21:
            print("Dealer busts as they have over 21")
            return True
        else:
            print(f"Dealer stands with a total of {dealer_val}")

        if player_val == dealer_val:
            print(f"Same card total. Push with card totals of {player_val}")
            return False

        elif player_val > dealer_val:
            print(f"Player wins with card total of {player_val}.")
            return True

        else:
            print(f"Dealer wins with card total of {dealer_val}.")
            return False

    def play_game(self) -> None:
        self.shoe.populate_deck()
        player_win = self.game_engine()

        if player_win:
            # Player wins, double their bet
            self.bankroll += self.player_bet * 2

    def handle_player_input(self):
        while self.player_hand.get_value() < 21:
            try:
                player_input = (
                    input(
                        "Do you want to stand or hit? (Please input just the word 'stand' or the word 'hit')\n"
                    )
                    .strip()
                    .lower()
                )
            except KeyboardInterrupt:
                sys.exit(0)
            if player_input == "stand":
                break
            elif player_input == "hit":
                self.player_hand.add_card(self.shoe.draw_card())
                print(self.player_hand.print_hand_as_ascii(), end="")
            else:
                print(
                    "Invalid input. Please input either 'hit' or 'stand' for your action to attempt to beat the dealer"
                )

    def handle_betting(self) -> None:
        print(f"Your bankroll is {self.bankroll}")
        try:
            while True:
                player_input = (
                    input("Please enter your wager for this round\n").strip().lower()
                )
                if not player_input.isdigit():
                    print("Invalid input. Please enter a valid number.")
                    continue
                player_bet = int(player_input)
                if player_bet > self.bankroll:
                    print("You don't have enough money to make that bet.")
                    continue
                else:
                    self.bankroll -= player_bet
                    self.player_bet = player_bet
                    break
        except KeyboardInterrupt:
            sys.exit(0)


class Card:
    def __init__(self, suit, rank):
        """
        :param suit: The face of the card, e.g. Spade or Diamond
        :param rank: The value of the card, e.g 3 or King
        """
        self.suit = suit.capitalize()
        self.rank = rank
        self.points = CARD_VALUES[rank]

    def print_card_as_ascii(self, hidden: bool = False):
        if self.rank == "10":  # ten is the only one who's rank is 2 char long
            rank = self.rank
            space = ""  # if we write "10" on the card that line will be 1 char to long
        else:
            rank = self.rank[
                0
            ]  # some have a rank of 'King' this changes that to a simple 'K' ("King" doesn't fit)
            space = " "  # no "10", we use a blank space to will the void
        suit = SUITS_SYMBOLS[SUITS_NAME.index(self.suit)]

        if hidden:
            lines = [
                "┌─────────┐",
                "│░░░░░░░░░│",
                "│░░░░░░░░░│",
                "│░░░░░░░░░│",
                "│░░░░░░░░░│",
                "│░░░░░░░░░│",
                "└─────────┘",
            ]
        else:
            lines = ["" for _ in range(9)]
            # add the individual card on a line by line basis
            lines[0] = "┌─────────┐"
            lines[1] = "│{}{}       │".format(
                rank, space
            )  # use two {} one for char, one for space or char
            # lines[2].append('│         │')
            lines[2] = "│         │"
            lines[3] = f"│    {suit}    │"
            lines[4] = "│         │"
            # lines[6].append('│         │')
            lines[5] = f"│       {space}{rank}│"
            lines[6] = "└─────────┘"

        return lines


class Hand:
    def __init__(self):
        self.cards = []

    def add_card(self, card):
        self.cards.append(card)

    def get_value(self):
        """
        :return: The value of the hand, if the hand has an ace, it will be considered high
        until it needs to be low
        """
        value = 0
        num_aces = 0
        for card in self.cards:
            value += card.points
            if card.rank == "Ace":
                num_aces += 1
        while num_aces > 0 and value > 21:
            value -= 10
            num_aces -= 1
        return value

    def print_hand_as_ascii(self, return_string=True, first_card_hidden: bool = False):
        """
        Instead of a boring text version of the card we render an ASCII image of the card.
        :param cards: One or more card objects
        :param return_string: By default we return the string version of the card, but the dealer hide the 1st card and we
        keep it as a list so that the dealer can add a hidden card in front of the list
        """
        # we will use this to prints the appropriate icons for each card

        # create an empty list of list, each sublist is a line
        lines = ["" for _ in range(9)]

        for index, card in enumerate(self.cards):
            if index == 0 and first_card_hidden:
                card_lines = card.print_card_as_ascii(hidden=True)
            else:
                card_lines = card.print_card_as_ascii()
            for line_index, line in enumerate(card_lines):
                lines[line_index] += line

        if return_string:
            return "\n".join(lines)
        else:
            return lines
