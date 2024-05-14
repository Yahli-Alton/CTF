# Credit to https://codereview.stackexchange.com/questions/82103/ascii-fication-of-playing-cards user 200_success
import sys

from game import Game


def italic(txt):
    return f"\033[3m{txt}\033[0m"


if __name__ == "__main__":
    # win_percentage = calculate_win_percentage()
    win_score = 100_000
    start_bankroll = 100
    number_of_decks = 1
    ai_player_number = 4
    rounds = 2500
    flag = "GPNCTF{fake_flag}"
    print(
        r"""      ___       __   __         ___    ___  __      __                  __   __           __        __          __  
|  | |__  |    /  ` /  \  |\/| |__      |  /  \    / _` |  | |     /\  /__` /  ` |__|    /  `  /\  /__` | |\ | /  \ 
|/\| |___ |___ \__, \__/  |  | |___     |  \__/    \__> \__/ |___ /~~\ .__/ \__, |  |    \__, /~~\ .__/ | | \| \__/ 
                                                                                                                    """
    )
    print(
        f"""You have become the victim of a ransomware attack! Unfortunately, the hard drive that was encrypted by
the hackers belongs to your work laptop! If your boss finds out, you're fired, so you better resolve the issue by 
yourself. The hackers charge you ${win_score} for the decryption key, however, you have only ${start_bankroll} in your
bank account. Since you are a professional gambler and a hobby statistician, you decide to play Gulasch Blackjack in
the local Gulasch Casino to come up with the money.\n"""
    )
    print(
        f"""To win this challenge, you need to achieve or surpass a bankroll of ${win_score} over a maximum of {rounds} games. As
      soon as you reach the desired bankroll, the game ends, you win and you receive the decryption key for your
hard drive (i.e. the flag for this challenge). Gulasch Blackjack is similar to the game blackjack (the American version)
or 21 that you may have seen in a casino. It is a simplified version of the game. You as the player can only hit or
stand (no surrender,double-down, or splitting), and it only matters whether or not you win a hand against the dealer to
receive your payout. At the beginning of each game, you must select the amount of money you would like to wager. This
has to be an integer between 0 and your current bankroll. If you lose, the money wagered is lost. If you win, you
received double the wager amount. There are {number_of_decks} decks in play. This information and the AI players are
there to help you beat the dealer with all the information you have about what cards are facing up. The dealer stands
on an 18-21 and hits otherwise. If you are dealt a blackjack (21) then the round plays itself with no input needed other
than the wager amount.
"""
    )
    print(
        italic(
            "This challenge was inspired by a previous challenge from Thomas Callaghan (Discord-Tag: Seltzerz#6678)"
        )
    )
    try:
        player_ready = (
            input('\nWhen you are ready to play, type "ready"\n').lower().strip()
        )
    except KeyboardInterrupt:
        sys.exit(0)

    if player_ready != "ready":
        print('Exiting program as you did not type "ready"')
        sys.exit(0)

    game = Game(
        deck_count=number_of_decks,
        ai_player_count=ai_player_number,
        start_bankroll=start_bankroll,
    )

    for game_number in range(1, rounds + 1):
        game.play_game()

        if game.bankroll == 0:
            print("You have run out of money. Game over.")
            sys.exit(0)

        if game.bankroll >= win_score:
            print(
                f"\nYou have beat the casino with a bankroll of {game.bankroll}! Here is your flag:"
            )
            print(flag)
            sys.exit(0)
        else:
            print(
                f"Your current bankroll is {game.bankroll}. You need {win_score} to get the flag."
            )
    else:
        print("\nSadly you have not beat the casino on this attempt.")
