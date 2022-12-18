import 'story.dart';
class StoryBrain {
int _storyNumber = 0;

  List<Story> _storyData = [
    Story(
        storyTitle:
        'Oi! you with the hard looks and big arms! I desperately need some help o\'er here! Spare a few minutes to help make sure I get out of port on time?\n '
            'Otherwise I\'ll be stuck here until tomorrow!',
        choice1: 'Help the Captain load the ship',
        choice2: 'You ask him if you will get paid for assisting him'),
    Story(
        storyTitle: 'He looks at you. Well my money is little tight right now how about you join my crew and I will pay you in next port then I sell this merchandise ',
        choice1: 'Why not! I am ready for some adventure and some fun!',
        choice2: 'Sorry don\'t have the time or inclination for such things. you move on with your business.'),
    Story(
        storyTitle:
        'What was advertised as a few minutes turns out to be an hour or two as you lug large crates full of items from a nearby warehouse into the hold of the ship.\n'
         'City guards come running with swords in hand yelling stop criminal scum. The captain yell defend them of or kill them and I will pay you triple. ',
        choice1: 'you put the crate on the floor and give up.',
        choice2: 'you will help the captain and kill the guards.'),

    Story(
        storyTitle:
        'Unwilling to be bothered by such trivial matters, you continue on your way amidst curses from the ship\'s captain.',
        choice1: 'Restart',
        choice2: ''),

    Story(
        storyTitle:
        'After you kill the guards you look over to the captain who is setting sail as fast as possible. You jump in the see and climb abort the ship. You owe me some money oh there big captain.\n'
            'The Captain is impressed and offer you a place in the crew as first mate who is second in command. You go on and join this pirate/swindlers crew and make good money.',
        choice1: 'Restart',
        choice2: ''),

    Story(
        storyTitle:
        'The guards arrest you. you are dragged to the dungeons and interrogated. You tell them the captain hired you to move some crates for him and you are not part of the crew or helped him in any way.\n'
            'You are not believed and they chop of your hand for theft and throw you in to cell to die alone in darkness.',
        choice1: 'Restart',
        choice2: ''),
  ];

  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }
  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }
  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }
  void nextStory(int choiceNumber) {

    if(choiceNumber == 1 && _storyNumber == 0) {
      _storyNumber = 2;
    } else if(choiceNumber == 2 && _storyNumber == 0) {
      _storyNumber = 1;
    } else if (choiceNumber == 1 && _storyNumber == 1) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 1) {
      _storyNumber = 3;
    } else if (choiceNumber == 1 && _storyNumber == 2) {
      _storyNumber = 5;
    } else if (choiceNumber == 2 && _storyNumber == 2) {
      _storyNumber = 4;
    }
    else if (_storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5) {
      restart();

    }
  }
  void restart() {
    _storyNumber = 0;
  }
  bool buttonShouldBeVisible() {
    if(_storyNumber == 0 || _storyNumber == 1 || _storyNumber == 2) {
      return true;
    } else {
      return false;
    }
  }
}

