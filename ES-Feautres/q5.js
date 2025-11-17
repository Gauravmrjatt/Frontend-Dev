// Q5 – Hoisting Lab: The Sequence Trap
'use strict';
// Original problematic code demonstrates hoisting/time-of-initialization issues

// Explanation:
// - Function declarations (announce, startGame) are hoisted fully (binding + value)
// - var score is hoisted as declaration only (initialized to undefined before assignment)
// - let status is in TDZ until its declaration is executed

// Fixed version:
let score = 50;
function announce() { console.log("Game started"); }
let status = "ready";
function startGame() { console.log(status); }

console.log(score);
announce();
startGame();

// Arrow version (to compare):
const announceArrow = () => console.log('Game started');
const startGameArrow = () => console.log(status);
announceArrow();
startGameArrow();
