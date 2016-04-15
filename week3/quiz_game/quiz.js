var read = require('read');

var setup_question = {prompt: "How many rounds would you like to play?"};

var rounds;

var question1 = new Question(
    "What is your name?\n >",
    "Lancelot"
    );

var question2 = new Question(
    "What is your quest?\n >",
    "To find the grail."
    );

var question3 = new Question(
    "What is your favorite color?\n >",
    "Blue"
    );

var question4 = new Question(
    "What is the average airspeed velocity of an unladen swallow?\n >",
    "African or European swallow?"
    );

var questions = [question1, question2, question3, question4];

var current_question = question1;

function Question(description, answer){
    this.description = description;
    this.answer = answer;
}

Question.prototype.checkAnswer = function(answer) {
    return (this.answer === answer);
};


function setup(err, num){
        if (err) {throw err;}
        rounds = parseInt(num);
        if (rounds <= 0) {console.log("Game Over. Goodbye.")}
        else {read({prompt: current_question.description}, quiz);}
    }


function quiz(err, answer){
    if (err) {throw err}

    if (current_question.checkAnswer(answer)){
        console.log("Good Job.");
    }
    else {
        console.log("AAAHHH!!!");
    }

    rounds -= 1;

    if (rounds <= 0){
        console.log("Game Over.  Goodbye.");
    }
    else {
        current_question = questions[Math.floor(Math.random() * questions.length)];
        read({prompt: current_question.description}, quiz);
    }
}

read(setup_question, setup);