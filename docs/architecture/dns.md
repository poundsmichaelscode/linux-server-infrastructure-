# DNS Architecture

**Status:** Approved; implementation starts in Phase 5.

The placeholder zone is `example.com` and must be replaced with an owned domain for public deployment. The design uses primary `ns1` and secondary `ns2` servers in separate failure domains. Public recursion is disabled and zone transfers are restricted.

The zone will include SOA, NS, A, optional AAAA, CNAME, MX, and TXT records. Local reverse zones teach PTR administration; public reverse DNS remains controlled by the public IP owner.

Acceptance requires authoritative responses from both servers, synchronized serials, refused public recursion, refused unauthorized transfers, and successful `dig`, `host`, and `nslookup` checks.
