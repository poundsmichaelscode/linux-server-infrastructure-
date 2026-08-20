# Mail Architecture

**Status:** Approved; implementation starts in Phase 7.

Postfix handles SMTP transport on TCP 25 and authenticated submission on TCP 587. Dovecot provides authentication and IMAPS on TCP 993. OpenDKIM signs authorized outbound messages. Maildir is the planned mailbox format.

Relay is allowed only for local destinations, authenticated users, or narrowly trusted hosts. A negative automated test must prove that an unauthenticated client cannot relay between external domains.

Public delivery depends on MX, SPF, DKIM, DMARC, TLS, provider policy, reverse DNS, and IP reputation. The lab will restrict delivery to safe test destinations.
