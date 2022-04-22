/*
It is really helpful to have a goal in mind and a plan to achieve that goal when exercising.
While everyone’s goals are different, we can use structures to devise a plan and keep us on track!

I create a structure for exercises that keeps track of:
- name of the exercise.
- what muscle groups it (exercise) targets.
- how many repetitions (reps) should be done in one attempt (set).
- how many rounds of repetitions we should do (sets).
- how many total reps will be done.

Another structure will keep track of all these exercises for a regimen! This structure will:
- track the day of the week.
- store the exercises that should be done for a given day.
- include a method to as a reminder for a given day’s workout regimen.
*/

// Creating the Exercise Structure................
struct Exercise {
  var name: String
  var muscleGroups: [String]
  var reps: Int
  var sets: Int
  var totalReps: Int

  init(name: String, muscleGroups: [String], reps: Int,  sets: Int) {
    self.name = name
    self.muscleGroups = muscleGroups
    self.reps = reps
    self.sets = sets
    self.totalReps = sets * reps
  }
}

// Adding Exercise Instances......................

var pushUp = Exercise(name: "Push up", muscleGroups: ["Triceps", "Chest", "Shoulders"], reps: 10, sets: 3)

// Creating the Regimen Structure.................

struct Regimen {
  var dayOfWeek: String
  var exercises: [Exercise]

  init(dayOfWeek: String, exercises: [Exercise]) {
    self.dayOfWeek = dayOfWeek
    self.exercises = exercises
  }

  // Forming an Exercise Plan.....................

  func printExercisePlan() {
    print("Let's go! Today is \(self.dayOfWeek) and the plan is to:")
    for exercise in self.exercises {
      print("Do \(exercise.sets) sets of \(exercise.reps) \(exercise.name)s.")
      print("That's a total of \(exercise.totalReps) \(exercise.name)s!")
    }
  }
}

var mondayRegimen = Regimen(dayOfWeek: "Monday", exercises:[pushUp])

mondayRegimen.printExercisePlan()
