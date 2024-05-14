import unittest

from game import Card, Hand, Shoe


class TestBlackjack(unittest.TestCase):
    def test_hand(self):
        hand = Hand()
        self.assertEqual(hand.get_value(), 0)
        hand.add_card(Card("Hearts", "Ace"))
        self.assertEqual(hand.get_value(), 11)
        hand.add_card(Card("Hearts", "Ace"))
        self.assertEqual(hand.get_value(), 12)
        hand.add_card(Card("Hearts", "10"))
        self.assertEqual(hand.get_value(), 12)
        hand.add_card(Card("Hearts", "10"))
        self.assertEqual(hand.get_value(), 22)

    def test_shoe(self):
        k = 2
        shoe = Shoe(k)
        cards = {}
        for _ in range(k * 52):
            card = shoe.draw_card()
            name = (card.suit, card.rank)
            if name not in cards:
                cards[name] = 0
            cards[name] += 1

        self.assertTrue(all([count == k for count in cards.values()]))


if __name__ == "__main__":
    unittest.main()
