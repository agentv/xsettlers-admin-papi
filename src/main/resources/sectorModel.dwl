%dw 2.0
output application/java

var sr = {
  "location": {
    "xCoord": 0,
    "yCoord": 0,
    "zCoord": 0
  },
	"energy": 293.0,
	"farm": 167.0,
	"mining": 184.0,
	"portRegistry": [],
	"colonyRegistry": []
}
---
sr