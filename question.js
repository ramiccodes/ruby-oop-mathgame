const arrObj =
[
  { winner: 'Alice', loser: 'Bob',   loser_points: 3 },
  { winner: 'Carol', loser: 'Dean',  loser_points: 1 },
  { winner: 'Elise', loser: 'Bob',   loser_points: 2 },
  { winner: 'Elise', loser: 'Carol', loser_points: 4 },
  { winner: 'Alice', loser: 'Carol', loser_points: 2 },
  { winner: 'Carol', loser: 'Dean',  loser_points: 3 },
  { winner: 'Dean',  loser: 'Elise', loser_points: 2 },
]

const allPlayer = (arrObj) => {
  let players = [];

  for (let i = 0; i < arrObj.length; i++) {
    if (!players.includes(arrObj[i].winner)) {
      players.push(arrObj[i].winner);
    }
    if (!players.includes(arrObj[i].loser)) {
      players.push(arrObj[i].loser)
    }
  }
  return players;
}

console.log(allPlayer(arrObj));


const lostTo = (obj, arr) => {
  let playersArr = allPlayer(arrObj);
  let playersObj = {};

  for (let i = 0; i < arr.length; i++) {
    playersObj[arr[i]] = [];
  }
  return playersObj;
}

console.log(lostTo(arrObj))

const findLosers = (data, players = findPlayers(data)) => {
  
  const result = {}
   for(const player of players){
    result[player] = [];
  }


 for (const outcome of data) {
  let newArr = result[outcome.winner];
  newArr.push(outcome.loser);
  result[outcome.winner] = [...new Set(newArr)];
 }


 return result
}