import module namespace ddl = "http://www.zorba-xquery.com/modules/store/static/collections/ddl";
import module namespace dml = "http://www.zorba-xquery.com/modules/store/static/collections/dml";

import module namespace ns = "http://www.example.com/example" at "../collection_001.xqdata";

ddl:create(xs:QName("ns:collection-objects"));

dml:insert(xs:QName("ns:collection-objects"), { "foo" : "bar", "bar" : [ 1, 2, 3, { "foo" : "bar" } ]  });

dml:edit(dml:collection(xs:QName("ns:collection-objects")), { "bar" : "foo", "foo" : [ { "foo" : "bar" } ] });

dml:collection(xs:QName("ns:collection-objects"))