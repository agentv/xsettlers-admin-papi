# xsettlers-admin-papi v0.1.0

_API for administrative functions in the **Xsettlers** game_

## Backstory

Mankind has at last inherited the stars. With the invention of reliable FTL drive, and long-range scout ships, it is finally possible for humanity to move into the vastness of space and colonize the worlds that are suitable for living.

Using modular components (_Pods_) a society can expand using ships and founding colonies in newly scouted sectors of outer space.

Scout ships roam the spaceways looking for habitable new worlds, and groups of humans travel in colony ships to claim and shape the worlds that turn up.

Each player in this game controls one society in a shared universe. Ships can move to promising locations, or sit still and conduct operations in its current sector. They can harvest energy, produce food or goods, or make more people and Pods. Ships can be converted into colonies which sacrifices their ability to move, but increases their ability to produce.

Each Pod represents a group of people and resources (including equipment) to accomplish a specific goal. Most Pods consume food resources. Most of them consume energy resources.

A player’s team can focus on expansion, industry, trade or militarization.

## Game Structure

The structure of the game could be described in two ways. There is a logical structure. This is the structure as seen through the perspective of the participants. There is also an implementation structure. This is comprised of the program and service elements that make up the game infrastructrure.

### Logical Structure

The primary components in the design of the game are Pods, Ships, Colonies, and Players.

There is a Gameboard component that encapsulates most of the administrative functions of the game. For instance, the logic for processing "end-of-turn" calculations is a part of the Gameboard. The timers are part of the Gameboard as are the random result artifacts (ie. dice) Sectors are the cells of the Gameboard and they contain information about activities within their boundaries. Each Sector contains a registry of ships in the sector, colonies established in the sector, and statistics about maximum production for energy, food, and goods.

### Implementation structure

The game will be comprised of at least 4 distinct APIs. An Object API will store and retrieve game objects from a suitable Object Store. The Game PAPI will implement the generalized structures in the game (such as timers, job queues, randomizers, and so forth). This API may be generalized sufficiently to work for other games. The Admin PAPI encapsulates the game logic and administers the structures of the game. (Logic specific to the game should be handled here.) At least one Experience API (XAPI) is needed. There is the possiblity of several. A web service XAPI would be the obvious first choice. But an XAPI that allows game play completely through Twitter messaging, or another messaging platform. An XAPI for mobile client, or an XAPI designed to drive a 3D model suitable for VR play would also be possible.)

## Admin PAPI

This API would not be used by players of the game, but
can instead be used to manage events and activities that
are not to be handled by players.

It defines a game _master_, and _board_, and _player_ and then
administers resources and entitlements for these.

_master_ has a _clock_, a _board_, composed of _sectors_, 
grouped in _regions_, _jobqueue_, a _workerpool_ consisting of
_jobworker_ objects.

