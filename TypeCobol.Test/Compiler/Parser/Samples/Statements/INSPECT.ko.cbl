﻿*  /////////////////////////////////
* // INSPECT Format 1 (TALLYING)
* KO: BY forbidden in TALLYING
INSPECT x TALLYING i FOR CHARACTERS BY x
INSPECT x TALLYING i FOR CHARACTERS BY x j FOR CHARACTERS BY y k FOR CHARACTERS BY z
INSPECT x TALLYING i FOR CHARACTERS BY x BEFORE b AFTER c j FOR CHARACTERS BY y BEFORE d k FOR CHARACTERS BY z AFTER 8
INSPECT x TALLYING i FOR ALL x BY 1
INSPECT x TALLYING i FOR LEADING y BY 2
INSPECT x TALLYING i FOR ALL x BY 1 j FOR LEADING y BY 2
* KO: FIRST forbidden in TALLYING
INSPECT x TALLYING i FOR FIRST x
INSPECT x TALLYING i FOR ALL x j FOR LEADING y k FOR FIRST z
* KO: illegal numeric
INSPECT x TALLYING i FOR CHARACTERS BEFORE b AFTER c j FOR CHARACTERS BEFORE d k FOR CHARACTERS AFTER 8

*  //////////////////////////////////
* // INSPECT Format 2 (REPLACING)
* KO: CHARACTERS BY mandatory in REPLACING
INSPECT x REPLACING CHARACTERS
INSPECT x REPLACING CHARACTERS AFTER a BEFORE b
INSPECT x REPLACING ALL x
INSPECT x REPLACING FIRST y
INSPECT x REPLACING LEADING z
INSPECT x REPLACING ALL x FIRST y LEADING z
* KO: illegal numerics
INSPECT x REPLACING FIRST z BY 1
INSPECT x REPLACING FIRST 2 BY y
INSPECT x REPLACING LEADING 2 BY 1
INSPECT x REPLACING ALL x BY y FIRST z BY 1 FIRST 2 BY y LEADING 2 BY 1
INSPECT x REPLACING CHARACTERS BY i ALL x BY y CHARACTERS BY j FIRST z BY y CHARACTERS BY k LEADING 2 BY 1

*  ////////////////////////////////////////////////
* // INSPECT Format 3 (TALLYING then REPLACING)
* tallying, THEN replacing
INSPECT x REPLACING CHARACTERS BY i TALLYING i FOR CHARACTERS
* each TALLYING, REPLACING can occur only once
INSPECT x TALLYING i FOR CHARACTERS TALLYING i FOR ALL x REPLACING CHARACTERS BY i REPLACING ALL x
* KO: illegal numerics
INSPECT x TALLYING i FOR CHARACTERS j FOR ALL x k FOR CHARACTERS l FOR LEADING y
          REPLACING CHARACTERS BY i ALL x BY y CHARACTERS BY j FIRST z BY y CHARACTERS BY k LEADING 2 BY 1