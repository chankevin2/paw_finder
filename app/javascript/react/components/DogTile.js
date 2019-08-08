import React from "react"
import { Link } from "react-router-dom"
import Slider from "react-slick";

class Dogs extends React.Component {
  state = {
    dogs: [],
    page: 1
  }

  componentDidMount() {
    this.fetchDogs();
  }

  fetchDogs = (cb) => {
    const {page} = this.state;
    fetch(`/api/v1/pets?type=dog&page=${page}`)
    .then(response => {
      if (response.ok) {
        return response
      } else {
        let errorMessage = `${response.status} (${response.statusText})`,
          error = new Error(errorMessage);
        throw(error);
      }
    })
    .then(response => response.json())
    .then(body => {
      this.setState({ dogs: body.animals }, cb);
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  getNewDogs = currentIndex => {
    console.log('tttttt', currentIndex)
    if (currentIndex === 19) {
      if (localStorage.getItem('secondClick')) {
        this.setState(prevState => ({page: prevState.page += 1}), () => this.fetchDogs(() => {
          this.rSlick.slickGoTo(0);
        }));
      } else {
        localStorage.setItem('secondClick', true);
      }
    } else {
      localStorage.removeItem('secondClick');
    }
  }

  render() {
    const {dogs} = this.state;
    const dogsMap = dogs.map(dog => {
      return (
        <div key={dog.id}>
          <img style={{height: '600px'}} src={dog.photos && dog.photos[0] ? dog.photos[0].medium : 'https://images.wagwalkingweb.com/media/users/83807/avatars/avatar-default3.png' } />
          <p>{dog.name} - {dog.age} - {dog.gender} </p>
          <p>{`${dog.description}`}</p>
        </div>)
    })
    const settings = {
      dots: true
    };
    return (
      <div>
        <Slider ref={slick => this.rSlick = slick} afterChange={this.getNewDogs} {...settings}>
          {dogsMap}
        </Slider>
      </div>
    )
  }
}

export default Dogs
