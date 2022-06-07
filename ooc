#include <string>
#include <iostream>
#define SIZE 2

using namespace std;

class ClassRoom {
  private:
    int roomno;
  public:
    ClassRoom(){};
    ClassRoom(int no) {
       roomno = no;
    };
    void Display() {
       cout << "Class Room " << roomno << endl;
    };
    ~ClassRoom() {
      cout << "Deleting Room " << roomno << endl;
    }
};

class University {
   private:
     ClassRoom *room[SIZE]; 
   public:
     University() {
        room[0] = new ClassRoom(101);
        room[1] = new ClassRoom(102);
     }
     University(int no1, int no2) {
        room[0] = new ClassRoom(no1);
        room[1] = new ClassRoom(no2);
     }
     void DisplayClassRooms() {
       for (int r=0; r<SIZE; r++)
         room[r]->Display();
     }
     ~University() {
        cout << "University is closing " << endl;
        for (int r=0; r<SIZE; r++)
           delete room[r];
        cout << "Everthing deleted" << endl;
     }
};



int main()
{
      University *myUni;
      myUni = new University(305,506);
      myUni->DisplayClassRooms();
      delete myUni;	
	return 0;
}
