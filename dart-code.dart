
// Write a dart class for tech learners and mentors. Should have following methods
// addStacks() : Add a particular stack of interest/expertise
// setMentorOrLearner() : Set whether the participant is learner or mentor
// setAvailableTime() : if person is mentor set available time
// getMentor() : Takes stack and time as params and finds available mentors.  



class Participant {

  String name,stack,mentorOrLearner,x;
  int time;

  Participant({this.name, this.stack,this.mentorOrLearner,this.time});

  void addStacks() {
    print('Enter your interest or Area For Learning/Teaching');
    print('1. html \n2. css \n3. javascript');
    stack=stdin.readLineSync();
  }

  void setMentorOrLearner(){

    void setAvailableTime() => {
    print('Enter the amount of time you can spend :');
      time=int.parse(stdin.readLineSync());
    }

    print('Are you a Mentor or a Learner (M/L) ? ');
    x=stdin.readLineSync();
    if (x=='M'){
      mentorOrLearner='Mentor';
      setAvailableTime();
    }
    else if (x=='L'){
      mentorOrLearner='Learner';
    }
    else{
      print('Wrong Option');
      setMentorOrLearner();
    }
  }

  void getMentor(String option,int timeoption) => {

    if ((stack==option) && (timeoption<=time)){
      print(name);
    }

  }

}