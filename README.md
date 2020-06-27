# xsettlers-admin-papi
API for administrative functions in the game

This API would not be used by players of the game, but
can instead be used to manage events and activities that
are not to be handled by players.

It defines a game _master_, and _board_, and _player_ and then
administers resources and entitlements for these.

_master_ has a _clock_, a _board_, composed of _sectors_, 
grouped in _regions_, _jobqueue_, a _workerpool_ consisting of
_jobworker_ objects.

