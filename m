Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id C5C93B506FB
	for <lists+cake@lfdr.de>; Tue,  9 Sep 2025 22:26:02 +0200 (CEST)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id EAC5265CEBD;
	Tue, 09 Sep 2025 22:25:55 +0200 (CEST)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=g001.emailsrvr.com header.i=@g001.emailsrvr.com header.a=rsa-sha256 header.s=feedback header.b=QHwHbrY6
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1757449555;
 b=1itQxKVnTMk1evnZdRC8LK0d0jt7EFnbK33j9r3wAKMhxyWmYvKuLvZgs57DG4jTK8MT0
 +dytKTw5mUzrN0z0e/OGPN8T5Mx/5eCjf2QG/sR7tW9ndgnN59vwvb4oq8CVLvMCb5DSZdb
 2uPxI916Cwq+MwGKzvNhpvR9ZDsfOTw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1757449555; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=DIcwuLJ5SWYcLbR7By44yiLJ46ud+ztX+0WNUda4ZwA=;
 b=rZxZhAc/nG9yRymhn2N1J8BgnkfJIPQhbBy8YJ9A1Kbbsqm3qi+gvWNKjdXnLkKvHWV0T
 ryQOO7hH3vlkkDzSHiIx+IoiOBLmD9+3l5cju6cPWvi+X7kLkyRqTUqFNOD/GXL9i2FkIQ+
 7v0ub6lxgohZRS6cCfrDIa1B1xBi5O0=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=g001.emailsrvr.com;
 arc=none;
 dmarc=fail header.from=deepplum.com policy.dmarc=none
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=g001.emailsrvr.com; arc=none (Message is not ARC signed);
 dmarc=fail (Used From Domain Record) header.from=deepplum.com
 policy.dmarc=none
Received: from smtp102.iad3a.emailsrvr.com (smtp102.iad3a.emailsrvr.com
 [173.203.187.102])
	by mail.toke.dk (Postfix) with ESMTPS id 6472265CE62;
	Tue, 09 Sep 2025 22:25:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=g001.emailsrvr.com;
	s=feedback; t=1757449551;
	bh=gHfI7rH88E4xIlhCNbmgIdB5gR/EOKUfPFkWeGtp93Q=;
	h=Date:Subject:From:To:From;
	b=QHwHbrY6Qugr3cfFJghRcNFXUuv956rLlMVcmVXqQaNk/BDPzfIUu29sf5ZFeeZvd
	 aP9be3DxFVHSd9zpT0UUUqyd+1EtjEKdfsRuvYVmqxbXqWZQzlhUvW39NtetOtbafc
	 9pftFGR2bqrQhFAUlPSaRtdeo5+ST8VgglFlnPds=
Received: from app55.wa-webapps.iad3a (relay-webapps.rsapps.net
 [172.27.255.140])
	by smtp29.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id 8EFC72509F;
	Tue,  9 Sep 2025 16:25:51 -0400 (EDT)
Received: from deepplum.com (localhost.localdomain [127.0.0.1])
	by app55.wa-webapps.iad3a (Postfix) with ESMTP id 6877C62297;
	Tue,  9 Sep 2025 16:25:51 -0400 (EDT)
Received: by apps.rackspace.com
    (Authenticated sender: dpreed@deepplum.com, from: dpreed@deepplum.com)
    with HTTP; Tue, 9 Sep 2025 16:25:51 -0400 (EDT)
X-Auth-ID: dpreed@deepplum.com
Date: Tue, 9 Sep 2025 16:25:51 -0400 (EDT)
From: "David P. Reed" <dpreed@deepplum.com>
To: "Frantisek Borsik" <frantisek.borsik@gmail.com>
Cc: "Cake List" <cake@lists.bufferbloat.net>,
 codel@lists.bufferbloat.net,
 "bloat" <bloat@lists.bufferbloat.net>,
 "Jeremy Austin via Rpm" <rpm@lists.bufferbloat.net>
MIME-Version: 1.0
Importance: Normal
X-Priority: 3 (Normal)
X-Type: html
In-Reply-To: 
 <CAJUtOOhdVJCiRqhOTmdiPNmZEq9_dA+k=evLWX1UsB=ySHpf_A@mail.gmail.com>
References: 
 <CAJUtOOhdVJCiRqhOTmdiPNmZEq9_dA+k=evLWX1UsB=ySHpf_A@mail.gmail.com>
X-Client-IP: 209.6.168.128
Message-ID: <1757449551.421420786@apps.rackspace.com>
X-Mailer: webmail/19.0.28-RC
X-Classification-ID: e12094ec-605f-410f-98ff-03d1e4074e61-1-1
Message-ID-Hash: 26APZ2QEKALCHP7PJK3FH35D4762VGKY
X-Message-ID-Hash: 26APZ2QEKALCHP7PJK3FH35D4762VGKY
X-MailFrom: dpreed@deepplum.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Content-Filtered-By: Mailman/MimeDel 3.3.10
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: XDP2 is here - from one and only Tom Herbert (almost to the date,
 10 years after XDP was released)
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/1757449551.421420786@apps.rackspace.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

CkhpIEZyYW5rIC0KIApJIHRoaW5rIGl0IGlzIGludGVyZXN0aW5nIGFzIGEgY29uY2VwdC4gQSBw
cm9qZWN0IEkgYW0gYWR2aXNpbmcgaGFzIGJlZW4gdXNpbmcgRFBESyB2ZXJ5IGVmZmVjdGl2ZWx5
IHRvIGdldCByaWQgb2YgdGhlIGh1Z2UgcGF0aCBhbmQgbG9ja2luZyBkZWxheXMgaW4gdGhlIGN1
cnJlbnQgTGludXggbmV0d29yayBzdGFjay4gWERQMiBjb3VsZCBiZSBzdXBwb3J0ZWQgaW4gYSBy
aW5nMyAodXNlcikgYWRkcmVzcyBzcGFjZSwgYWNoaWV2aW5nIGEgc2ltaWxhciByZXN1bHQuCiAK
QnV0IEkgZG9uJ3QgdGhpbmsgWERQMiBpcyBnb2luZyB0aGF0IGRpcmVjdGlvbiAtIHNvIGl0IG1h
eSBiZSBzdHVja2ludG8gdGhlIG1lc3Mgb2Yga2VybmVsIHNwYWNlIG5ldHdvcmtpbmcuIEFkZGlu
ZyBlQlBGIG9ubHkgaGFzIG1hZGUgdGhpcyBtb3JlIG9mIGEgbWVzcywgYnkgdGhlIHdheSAoYW5k
IGFkZGluZyBhIG5ldyAiY29tcGlsZXIiIHRoYXQgbmVlZHMgdG8gYmUgdmVyaXJpZWQgYXMgc2Fm
ZSBmb3IgdGhlIGtlcm5lbCkuCgpJIHdpbGwgYmUgd2F0Y2hpbmcgaG93IHRoaXMgZXZvbHZlcy4K
IApEYXZpZAogCk9uIFR1ZXNkYXksIFNlcHRlbWJlciA5LCAyMDI1IDA2OjMyLCAiRnJhbnRpc2Vr
IEJvcnNpayIgPGZyYW50aXNlay5ib3JzaWtAZ21haWwuY29tPiBzYWlkOgoKCgo+IEhlbGxvIHRv
IGFsbCwKPiAKPiBMb29rcyBpbnRlcmVzdGluZzoKPiBodHRwczovL21lZGl1bS5jb20vQHRvbV84
NDkxMi94ZHAyLXRoaXMtY2hhbmdlcy1ldmVyeXRoaW5nLWF0LWxlYXN0LWZvci1haS1tbC1pbmZy
YXN0cnVjdHVyZS04NTBjMWJhODI3NzEKPiAKPiAKPiBBbGwgdGhlIGJlc3QsCj4gCj4gRnJhbmsK
PiAKPiBGcmFudGlzZWsgKEZyYW5rKSBCb3JzaWsKPiAKPiAKPiAqSW4gbG92aW5nIG1lbW9yeSBv
ZiBEYXZlIFTDpGh0OiAqMTk2NS0yMDI1Cj4gCj4gaHR0cHM6Ly9saWJyZXFvcy5pby8yMDI1LzA0
LzAxL2luLWxvdmluZy1tZW1vcnktb2YtZGF2ZS8KPiAKPiAKPiBodHRwczovL3d3dy5saW5rZWRp
bi5jb20vaW4vZnJhbnRpc2VrYm9yc2lrCj4gCj4gU2lnbmFsLCBUZWxlZ3JhbSwgV2hhdHNBcHA6
ICs0MjE5MTk0MTY3MTQKPiAKPiBpTWVzc2FnZSwgbW9iaWxlOiArNDIwNzc1MjMwODg1Cj4gCj4g
U2t5cGU6IGNhc2lvYTUzMDJjYQo+IAo+IGZyYW50aXNlay5ib3JzaWtAZ21haWwuY29tCj4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBDYWtlIG1haWxp
bmcgbGlzdCAtLSBjYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldAo+IFRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gY2FrZS1sZWF2ZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKPiAKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxp
c3QgLS0gY2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byBjYWtlLWxlYXZlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldAo=
