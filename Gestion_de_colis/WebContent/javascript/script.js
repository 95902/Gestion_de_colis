/**
 * 
 */
/************************ 
********FORMULAIRE**********
**********************/
// elements
const DOMstrings = {
  stepsBtnClass: 'multisteps-form__progress-btn',
  stepsBtns: document.querySelectorAll(`.multisteps-form__progress-btn`),
  stepsBar: document.querySelector('.multisteps-form__progress'),
  stepsForm: document.querySelector('.multisteps-form__form'),
  stepsFormTextareas: document.querySelectorAll('.multisteps-form__textarea'),
  stepFormPanelClass: 'multisteps-form__panel',
  stepFormPanels: document.querySelectorAll('.multisteps-form__panel'),
  stepPrevBtnClass: 'js-btn-prev',
  stepNextBtnClass: 'js-btn-next' };


//suppression de class et un esemble d'éléments
const removeClasses = (elemSet, className) => {

  elemSet.forEach(elem => {

    elem.classList.remove(className);

  });

};

//retourn le parent d'un element
const findParent = (elem, parentClass) => {

  let currentNode = elem;

  while (!currentNode.classList.contains(parentClass)) {
    currentNode = currentNode.parentNode;
  }

  return currentNode;

};

//renvoie le numéro du bouton actif
const getActiveStep = elem => {
  return Array.from(DOMstrings.stepsBtns).indexOf(elem);
};

// définir toutes les étapes avant de cliquer (et de cliquer aussi) sur actif
const setActiveStep = activeStepNum => {

// supprimer l'état actif de tout l'état
  removeClasses(DOMstrings.stepsBtns, 'js-active');

 
// active les éléments sélectionnés
  DOMstrings.stepsBtns.forEach((elem, index) => {

    if (index <= activeStepNum) {
      elem.classList.add('js-active');
    }

  });
};


// obtenir le panneau actif
const getActivePanel = () => {

  let activePanel;

  DOMstrings.stepFormPanels.forEach(elem => {

    if (elem.classList.contains('js-active')) {

      activePanel = elem;

    }

  });

  return activePanel;

};


// ouvrir le panneau actif (et fermer les panneaux inactifs)
const setActivePanel = activePanelNum => {


// supprimer la classe active de tous les panneaux
  removeClasses(DOMstrings.stepFormPanels, 'js-active');

// afficher le panneau actif
  DOMstrings.stepFormPanels.forEach((elem, index) => {
    if (index === activePanelNum) {

      elem.classList.add('js-active');

      setFormHeight(elem);

    }
  });

};


// définir la hauteur du formulaire égale à la hauteur actuelle du panneau
const formHeight = activePanel => {

  const activePanelHeight = activePanel.offsetHeight;

  DOMstrings.stepsForm.style.height = `${activePanelHeight}px`;

};

const setFormHeight = () => {
  const activePanel = getActivePanel();

  formHeight(activePanel);
};


// FONCTION CLIC DE LA BARRE DES ÉTAPES
DOMstrings.stepsBar.addEventListener('click', e => {

 
// vérifier si la cible de clic est un bouton d'étape
  const eventTarget = e.target;

  if (!eventTarget.classList.contains(`${DOMstrings.stepsBtnClass}`)) {
    return;
  }


// obtenir le numéro d'étape du bouton actif
  const activeStep = getActiveStep(eventTarget);


// définir toutes les étapes avant de cliquer (et de cliquer aussi) sur actif
  setActiveStep(activeStep);


// ouvrir le panneau actif
  setActivePanel(activeStep);
});


// PRÉCÉDENT / SUIVANT BTNS CLIQUEZ
DOMstrings.stepsForm.addEventListener('click', e => {

  const eventTarget = e.target;

  //check if we clicked on `PREV` or NEXT` buttons
  if (!(eventTarget.classList.contains(`${DOMstrings.stepPrevBtnClass}`) || eventTarget.classList.contains(`${DOMstrings.stepNextBtnClass}`)))
  {
    return;
  }


// vérifier si nous avons cliqué sur les boutons `PREV` ou NEXT`
  const activePanel = findParent(eventTarget, `${DOMstrings.stepFormPanelClass}`);

  let activePanelNum = Array.from(DOMstrings.stepFormPanels).indexOf(activePanel);


// définir l'étape active et le panneau actif en cliquant sur
  if (eventTarget.classList.contains(`${DOMstrings.stepPrevBtnClass}`)) {
    activePanelNum--;

  } else {

    activePanelNum++;

  }

  setActiveStep(activePanelNum);
  setActivePanel(activePanelNum);

});


// RÉGLAGE DE LA HAUTEUR APPROPRIÉE DU FORMULAIRE EN CHARGE
window.addEventListener('load', setFormHeight, false);


// RÉGLAGE DE LA HAUTEUR APPROPRIÉE DU FORMULAIRE À LA RÉDUCTION
window.addEventListener('resize', setFormHeight, false);

/************************ 
********MODAL**********
**********************/

var myModal = document.getElementById('myModal')
var myInput = document.getElementById('myInput')




$(document).ready(function(){
  $('#buttonCloseID').click(function(){
    var databack = $("#myModalidentification #nameUserId").val().trim();
      $('#result').html(databack);
     
        console.log(databack);
  });

});