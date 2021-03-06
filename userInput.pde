void userInput(ArrayList<Pokemon>possiblePokemon, String[] questions){
  if (possiblePokemon.size() > 1){
    background (50);
    fill (100,100,255);
    rect(0,200,1000,800);
    drawButtons();
    displayQuestion(questions[questionPicker(possiblePokemon, questions)]);
  }
  else if (possiblePokemon.size() == 0){
    println("no choice");
  }
  else{
    userOutput(possiblePokemon.get(0));
  }
}



void drawButtons() {
  
  textSize(50);
  
  fill(230);
  rect(185,450,630,280);
  
  //YES BUTTON
  fill(50,255,50);
  rect(225, 500, 200, 200);
  
  fill(255,255,0);
  text("YES", 275, 600);
  
  //NO BUTTON
  fill(255,50, 50);
  rect(575, 500, 200, 200);
  
  fill(255,255,0);
  text("NO", 625, 600);
}


void displayQuestion(String i) { //use questionPicker to find i
  
  textSize(45);

  
  fill(255,255,75);
  ellipse(500,100,500,175);
  
  fill(0);
  text("Pokemon Guesser",290,115);

  fill(200);
  rect(15,300,970,90);
  
  fill( 255 );
  text(i, 20, 360);
  
}

void drawBackground(){
  fill (100,100,255);
  rect(0,200,1000,800);
}

boolean yesButtonWasClicked() {
  if( mouseX >= 225 && mouseX <= 425 && mouseY >= 500 && mouseY <=700 )
      return true;
      
  else
    return false;
}


boolean noButtonWasClicked() {
  if( mouseX >= 575 && mouseX <=775 && mouseY >= 500 && mouseY <=700 )
      return true;
      
  else
    return false;
}  