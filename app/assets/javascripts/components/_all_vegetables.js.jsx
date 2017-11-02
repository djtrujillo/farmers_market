var AllVegetables = React.createClass({
    getInitialState() {
      return { vegetables: [] }
    },

    componentDidMount() {
      $.getJSON('/api/v1/vegetables.json', (response) => { this.setState({ vegetables: response }) });
    },

    render() {
        var vegetables= this.state.vegetables.map((vegetable) => {
            return (
                <div key={vegetable.id}>
                    <h3>{vegetable.name}</h3>
                    <p>{vegetable.description}</p>
                </div>
            )
        });

        return(
            <div>
                {vegetables}
            </div>
        )
    }
})
