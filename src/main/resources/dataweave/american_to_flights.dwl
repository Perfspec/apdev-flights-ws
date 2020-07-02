%dw 2.0
output application/json
---
payload map (item, index) -> {
	airlineName: "American",
	availableSeats: item.emptySeats,
	departureDate: item.departureDate,
	destination: item.destination,
	flightCode: item.code,
	origination: item.origin,
	planeType: item.plane."type",
	price: item.price
} as Object {
	class : "com.mulesoft.training.Flight"
}