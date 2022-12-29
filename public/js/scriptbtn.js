let btnShow = document.querySelection('button');
let input = document.querySelection('input');

btnShow.addEventListener('click', () => {
  output.innerText = input.value;
})

input.addEventListener('keyup', (){

  if(input.value.length > 6 ) btnShow.disable = true
  else btnShow.disable = false;
});
