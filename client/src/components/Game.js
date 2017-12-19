import React from 'react';
import {Grid} from 'semantic-ui-react';
import Board from './Board';
import ScoreCard from './ScoreCard';

const styles = {
  fullHeight: { height: '100vh' },
  board: { backgroundColor: '#AAFFAA' },
  score: { backgroundColor: '#9337DB' },
}

class Game extends React.Component {
  state ={ roll: 0, dice: [...new Array(5)], keep: [] };

  componentDidMount(){
    this.rollDice();
  }

  rollDice = () => {
    let dice = this.state.dice.map( (el, index) => {
      return Math.floor(Math.random() * 6) + 1;
    })

    this.setState( state => {
      return {dice, roll: state.roll + 1}
    })
  }

  render () {
    return (
      <Grid className='container'>
        <Grid.Row>
          <Grid.Column width={10} style={{ ...styles.fullHeight, ...styles.board }}>
            <Board/>
          </Grid.Column>
          <Grid.Column width={6} style={{ ...styles.fullHeight, ...styles.score }}>
            <ScoreCard/>
          </Grid.Column>
        </Grid.Row>
      </Grid>
    )
  }
}

export default Game;
