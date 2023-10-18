# Unique name assumption

https://en.wikipedia.org/wiki/Unique_name_assumption

The **unique name assumption** is a simplifying assumption made in some ontology languages and description logics.

In logics with the unique name assumption, different names always refer to different entities in the world.

The standard ontology language OWL does not make this assumption, but provides explicit constructs to express whether two names denote the same or distinct entities.
* `owl:sameAs` is the OWL property that asserts that two given names or identifiers (e.g. URIs) refer to the same individual or entity.
* `owl:differentFrom` is the OWL property that asserts that two given names or identifiers (e.g. URIs) refer to different individuals or entities.
