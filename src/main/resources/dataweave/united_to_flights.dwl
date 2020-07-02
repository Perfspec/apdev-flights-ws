%dw 2.0
output application/json
---
payload.flights map ( flight , indexOfFlight ) -> {
	airlineName: flight.airlineName,
	availableSeats: flight.emptySeats,
	departureDate: flight.departureDate,
	destination: flight.destination,
	flightCode: flight.code,
	origination: flight.origin,
	planeType: flight.planeType,
	price: flight.price
} as Object {
	class : "com.mulesoft.training.Flight"
}