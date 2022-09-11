import React, { Component } from 'react'
import { Form, Dropdown, Container, Segment } from 'semantic-ui-react'
import { options } from './stocks'

class WatchlistForm extends Component {
    state = { watchlist: [] }

    // handleChange = (e, { name, value }) => this.setState({ [name]: value })
    updateWatchlist = (e, { value }) => {
        console.log(value)
        this.setState({ watchlist: value })
    }

    handleSubmit = () => {
        const { watchlist } = this.state
        console.log(watchlist)
        this.setState({ watchlist: watchlist })
    }

    render() {
        const { watchlist } = this.state

        return (
            <div>
                <Container>
                    <Segment padded>
                        <Form onSubmit={this.handleSubmit}>
                            <Form.Group>
                                <Dropdown
                                    placeholder='Stocks'
                                    fluid multiple selection
                                    options={options}
                                    onChange={this.updateWatchlist}
                                    text='Select your stocks'
                                    search
                                />
                                <Form.Button content='Create' />
                            </Form.Group>
                        </Form>
                    </Segment>
                </Container>

            </div>
        )
    }
}

export default WatchlistForm
