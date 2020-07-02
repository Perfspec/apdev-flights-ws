%dw 2.0
output application/json
ns ns0 http://soap.training.mulesoft.com/
---
payload.body.ns0#findFlightResponse.*return map ( return , indexOfReturn ) -> {
	airlineName: return.airlineName,
	availableSeats: return.emptySeats,
	departureDate: return.departureDate,
	destination: return.destination,
	flightCode: return.code,
	origination: return.origin,
	planeType: return.planeType,
	price: return.price
} as Object {
	class : "com.mulesoft.training.Flight"
}