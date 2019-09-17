/// @func ce_component_config()
/// @desc Configuration script for the component system.

/// @macro {string} The id of the event triggered when a component is added to
/// an instance. The event data will be equal to the id of the component.
#macro CE_EV_COMPONENT_ADDED "ceComponentAdded"

/// @macro {string} The id of the event triggered when a component is removed
/// from an instance. The event data will be equal to the id of the component.
#macro CE_EV_COMPONENT_REMOVED "ceComponentRemoved"