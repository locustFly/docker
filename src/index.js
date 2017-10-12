// 第一天plugin练习

// import _ from 'lodash';
// import './index.css';
//
// // import Icon from './1.jpg';
//
// function component(){
//     var element = document.createElement('div');
//     element.innerHTML = _.join(['Hello','webpack'],' ');
//     element.classList.add('hello');
//     // var myIcon = new Image();
//     // myIcon.src = Icon;
//     //
//     // element.appendChild(myIcon);
//
//     return element;
// }
// document.body.appendChild(component());



// 第二天loader练习
import layer from './componets/layer/layer.js';

const App = function(){
    console.log(layer);
}

new App();