
// Write a dart class for tech learners and mentors. Should have following methods
// addStacks() : Add a particular stack of interest/expertise
// setMentorOrLearner() : Set whether the participant is learner or mentor
// setAvailableTime() : if person is mentor set available time
// getMentor() : Takes stack and time as params and finds available mentors.  

import "dart:io";
import "dart:math";
import "dart:core";






class RegisteredUser
{
  String name,email,bio;

  RegisteredUser(this.name,this.email);

  void showStacks(var interestList)
  {
    interestList.forEach((interest_key,interest_desc)=>{
      stdout.writeln("$interest_key.$interest_desc")
    });
  }
  
  //Just give some functionality to this class
  void addBio(String str)
  {
    this.bio=str;
  }
  
}

class Participant extends RegisteredUser
{

  bool mentorOrNot=false;
  var interests = new List();

  Participant ( String name, String email) : super(name,email);

  

  void addStacks(int key)
  {
    this.interests.add(key);
  }

  void removeStacks(int key)
  {
    this.interests.remove(key);
  }

  void showMyStacks()
  {
    this.interests.forEach((interest)=>{
      stdout.write(interest)
    });
  }

  void setMentorOrLearner()
  {
    this.mentorOrNot=true;
  }

  void getMentor()
  {
    //get mentor for the list of interests
  }
  
}





void main()
{
  int m,y_n,mentorOrNot,main_option;
  String topic,name,email;
  
  var registeredUsers = new List();

  //List of predefined interests
  var interestList = new Map();
  interestList[0] = "Web Development";
  interestList[1] = "AI zero-hero";
  interestList[2] = "photoshop";
  interestList[3] = "3d modeling";

  // //Adding externally defined mentors inside the List


  // // Enter Your details for logging in or logging out
  // //If the email is already present in the List then its a registered User else not
  // stdout.writeln("Enter Your E-mail");
  // email = stdin.readLineSync();
  // //checking the emails by looking inside the registered users email and if not present add the user to the list
  // // if(this.email==email)
  // // {
  // //   stdout.writeln("You are a Registered User and You are now logged In !!");

  // // }
  // //outside the loop
  // stdout.writeln("You are not registered thus adding you in");
  Participant p1 = new Participant("Bret Fisher","BretFisher@gmail.com");
  p1.addBio("""Hey I'm Bret. Thanks for learning about me. I'm a freelance DevOps and Docker consultant, trainer, speaker, and Open Source volunteer working from Virginia Beach, USA. I've helped over 150,000 people learn Docker and DevOps tools and techniques.

I've been a cloud and datacenter ops/sysadmin for more than 20 years. For years I've been exclusive to containers and I help teams Dockerize their apps and systems, and improve their speed of deployment, resiliency, metrics, and awareness. All that DevOps-y stuff.

I'm also a Docker Captain and Code for America Brigade Captain. I run monthly meetups, speak at conferences, and love helping others. I'm obsessed with containerizing any app I see, and I'll likely talk your ear off about it next time we meet.

I sometimes develop in Node.js, Bash, and general web, usually for open source. 

When not working, I crossfit, surf a little, geekout in our awesome local dev community in Virginia Beach, and travel with my Wife.""");
  
  


  // registeredUsers.add(p1);
  // p1.addStacks(1);
  // p1.addStacks(2);
  // p1.setMentorOrLearner();
  // print(registeredUsers[0].name);
  // print(registeredUsers[0].email);

  // print(registeredUsers[0].mentorOrNot);
  // print(interestList[p1.interests[0]]);
  // print(p1.interests[1]);
  // print(p1.bio);



  




  // Main Part of the program on what You would Like to
  while(main_option!=7)
  {
    stdout.writeln("What would you like to do?\n1.Add Interests\n2.Remove Interests\n3.show my interests\n4.See Your Mentors\n5.Apply As a Mentor\n6.Add a Course\n7.Remove a Course\n8.Exit");
    stdout.write("Enter Your option : ");
    main_option = int.parse(stdin.readLineSync());
    stdout.writeln();

    switch(main_option)
    {
      case 1:
          //add Interests
          stdout.writeln("Your option Given Are");
          p1.showStacks(interestList);
          stdout.write("Enter Your option : ");
          p1.addStacks(int.parse(stdin.readLineSync()));
          break;
      case 2:
          //Remove Intersests for the user selected
          stdout.writeln("Which One do you want to remove ?");
          p1.showMyStacks();
          stdout.write("Enter Your option : ");
          p1.removeStacks(int.parse(stdin.readLineSync()));
          break;
      case 3:
          //show users their current interests
          p1.showMyStacks();
          break;
      case 4:
      //See Mentors
      case 5:
      //Apply as a mentor
      case 6:
      //Add courses As a mentor
      case 7:
      //Remove Courses as a mentor
      case 8:
      //Exit from this loop
      exit(0);
    }

    print("\n\n");

  }




  
  // stdout.writeln("Are You a Mentor or not?\n1.Yes\t2.No");
  // m = int.parse(stdin.readLineSync());
  
  // stdout.writeln("Enter Your Name : \n");
  // name = stdin.readLineSync();
  
  // stdout.writeln("Add a topics of your interest");
  // topic = stdin.readLineSync();
  
  
  
  // stdout.writeln("Add a topics of your interest");
  // topic = stdin.readLineSync();

  // stdout.writeln("Add a topics of your interest");
  // do{



  //   stdout.writeln("Are Done adding?\n1.Yes\t2.No");
  //   y_n = int.parse(stdin.readLineSync());

  // }while(y_n!=2)
  
}

 