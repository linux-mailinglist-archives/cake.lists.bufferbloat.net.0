Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 118F9B58818
	for <lists+cake@lfdr.de>; Tue, 16 Sep 2025 01:16:55 +0200 (CEST)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 9942C69A7EA;
	Tue, 16 Sep 2025 01:16:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1757978214;
	bh=pKIAKaB4d2i0u9Q68H/IMqLm/mBQhoIAGZYgIxpkOBg=;
	h=References:In-Reply-To:Date:To:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=OXae4vxDc/B7Za9ZLxsIorq63iMacIugzUwqxM3hKi5KFZPaDj0ZE7ezKXZh9VCUl
	 fkYhgJNnQIQyuUIis2maMT/3utQesAbZhUP7em5rK0FgsHGTvq2ddG0JK/MOd67LIu
	 6Iy2Oizpl837FohXS3hffv3W9Zf5ZW7OQ1klLVmotSVoFBdbEE4/v9plapIFS6A4wa
	 dbPtQG6yCkxH8P7moN8sgX1qowWK2Vcjpzo04xY93ko3SM4/v4eEmqBBioa0jbNK/T
	 dMJJ+seG5gkMCFpIZukRYvxkrdSH6Z8xiaV3quBIhJ48KCGCYD+jN+At/7MH8NZeby
	 YNMg0EuOOtytQ==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1757978214;
 b=Mu135vdEX0ttK36V/vACbzEdzuK2bfZyQEfyfYeLvjn3Os7tdjLIdoqKSURa9yowuW2w9
 ZZQYlX3h30MKgk0LP0R6GLs8f5QDo3Vl74NVB1pjoBg/hhKnapnLUGDBVsA06/0fbV74K6h
 WjDqd+CZF4g/lGCWmeslM9haRaDDN7s=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1757978214; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=pKIAKaB4d2i0u9Q68H/IMqLm/mBQhoIAGZYgIxpkOBg=;
 b=Wl03QQzw5LyX2S87tgCkU+cx1RZ87jsFqFHmhezTF5s85z5ciPJCrS0rbVkXCYqaLkkX4
 FP+ZmN4dI1oBzSlP6fBYbaQxnm/hUcu/1JQCeEAJs5raPLMlq16JSL9Stq2HTHXwNlhk2Cy
 7wE5raS9ZV9LQmtAePKzszzQkLxdXPc=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=rjmcmahon.com;
 arc=none;
 dmarc=pass header.from=rjmcmahon.com policy.dmarc=reject
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=rjmcmahon.com; arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=rjmcmahon.com
 policy.dmarc=reject
Received: from bobcat.rjmcmahon.com (bobcat.rjmcmahon.com [45.33.58.123])
	by mail.toke.dk (Postfix) with ESMTPS id A67FE69A7B1
	for <cake@lists.bufferbloat.net>; Tue, 16 Sep 2025 01:16:51 +0200 (CEST)
Received: from mail-oa1-f48.google.com (mail-oa1-f48.google.com
 [209.85.160.48])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest
 SHA256)
	(No client certificate requested)
	by bobcat.rjmcmahon.com (Postfix) with ESMTPSA id A5C8523BFF
	for <cake@lists.bufferbloat.net>; Mon, 15 Sep 2025 16:16:49 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 bobcat.rjmcmahon.com A5C8523BFF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rjmcmahon.com;
	s=bobcat; t=1757978209;
	bh=n6nbJkodyBUyumTwP6op4JHBerwtF6wnRAIGFaT9ETc=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=cVaads5aNCkzLAf6oDCih/0D+l7CCA157YBK7Uv/zKu0GdOtgY0IZwIesasgeMRAC
	 kyJqEA1cvkf7M2ua0NgX5GFTzWeAC9A62RgM1GWPT20Zjxd/x2YisOexmuNxw9kAsy
	 tQXm1eilsVsmE6WFgIFEulhJ7kkq0OZfOh/x7MdA=
Received: by mail-oa1-f48.google.com with SMTP id
 586e51a60fabf-3197f534179so3423816fac.2
        for <cake@lists.bufferbloat.net>;
 Mon, 15 Sep 2025 16:16:49 -0700 (PDT)
X-Forwarded-Encrypted: i=1;
 AJvYcCUbEYVVth+G8kjk5ZKAwxZLe1h48k4q3xlItHLs3oyzP0EUTfKydJ1/qIfDljfHvSAeZ6Fm@lists.bufferbloat.net
X-Gm-Message-State: AOJu0Yz5bVrCjIqi9dteAZWhO/2KyLqsu6zynx8TRUgYhiWXc3BZ2TTv
	bFP8pAdgDVyW9wJ35Lpp4VBrar3m2J76lPy1dzIMsMxgqX/2RDA7AHA3UXio8jOq4hTVzB8p0w0
	BXqEbrL7PImzcqNOSwz9p0tusg1/uv6c=
X-Google-Smtp-Source: 
 AGHT+IFAjEPHRU1uxlB2PxzuQ36FP9qoRyij0mRWDnvx9Wwtyaiu9uaVz3k4kM3Tlqxll064Xvwf5eH/Bh23g6NESzA=
X-Received: by 2002:a05:6871:e621:b0:331:69c5:53a3 with SMTP id
 586e51a60fabf-33169c556c7mr4286929fac.21.1757978209049; Mon, 15 Sep 2025
 16:16:49 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAJUtOOhdVJCiRqhOTmdiPNmZEq9_dA+k=evLWX1UsB=ySHpf_A@mail.gmail.com>
 <1757449551.421420786@apps.rackspace.com>
In-Reply-To: <1757449551.421420786@apps.rackspace.com>
Date: Mon, 15 Sep 2025 16:16:37 -0700
X-Gmail-Original-Message-ID: 
 <CAEBrVk4LzSbNdpUM+w62QkUC9Fx=tqN-gtZA99nX0rLf1zW=XA@mail.gmail.com>
X-Gm-Features: AS18NWDcnQ5NJTK8qb1q3NqL85uZR0iM8yNjTjLKM4UCoBn4DsKmOvaQgnxuKVc
Message-ID: 
 <CAEBrVk4LzSbNdpUM+w62QkUC9Fx=tqN-gtZA99nX0rLf1zW=XA@mail.gmail.com>
To: "David P. Reed" <dpreed@deepplum.com>
Cc: Frantisek Borsik <frantisek.borsik@gmail.com>,
 Cake List <cake@lists.bufferbloat.net>,
	codel@lists.bufferbloat.net, bloat <bloat@lists.bufferbloat.net>,
	Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>
Message-ID-Hash: IMPOLQ24CGJPEFKZAZA4IHYNN3TWKQ32
X-Message-ID-Hash: IMPOLQ24CGJPEFKZAZA4IHYNN3TWKQ32
X-MailFrom: rjmcmahon@rjmcmahon.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Content-Filtered-By: Mailman/MimeDel 3.3.10
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [Rpm] Re: XDP2 is here - from one and only Tom Herbert (almost to
 the date, 10 years after XDP was released)
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/CAEBrVk4LzSbNdpUM+w62QkUC9Fx=tqN-gtZA99nX0rLf1zW=XA@mail.gmail.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
From: Robert McMahon via Cake <cake@lists.bufferbloat.net>
Reply-To: Robert McMahon <rjmcmahon@rjmcmahon.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgRGF2aWQsDQoNClRoaXMgbWF5IGJlIHJlbGV2YW50IHRvIEZpLVdpLiBUaGUgdW5pdHMgd29u
J3QgYmUgODAyLjMgcGFja2V0cyBidXQgcmF0aGVyDQo4MDIuMTEgdHJhbnNtaXRzL3JlY2VpdmVz
IChpbmNsdWRpbmcgYWdncmVnYXRpb25zLCBhbmQgTVUNCnRyYW5zbXRpdHMvcmVjZWl2ZXMpIGFu
ZCBtYXliZSBvbiBtdWx0aXBsZSByYWRpbyBoZWFkcyBmb3IgcmVkdW5kYW5jeS4gKFRoZQ0KZmly
c3QgcGlsb3QgaXMgMjQgcmVtb3RlIHJhZGlvIGhlYWRzKQ0KDQpBbGwgaW4gdXNlciBzcGFjZSB3
b3VsZCBiZSBncmVhdC4NCg0KQW55IHRob3VnaHRzIG9uIHRoYXQ/DQoNCkJvYg0KDQpFQkZQIG9y
IERQREsgbmVlZCBub3QgYXBwbHkgcGVyICJ0aGUgZnVuZGFtZW50YWwgbGltaXRhdGlvbiBpcyB0
aGF0ICpuZWl0aGVyDQphcHByb2FjaCBnaXZlcyB5b3UgcmF3IDgwMi4xMSBhY2Nlc3MgaW4gbm9y
bWFsIG9wZXJhdGlvbmFsIG1vZGUqIC0gdGhhdA0KcmVxdWlyZXMgbW9uaXRvciBtb2RlIG9yIHNw
ZWNpYWxpemVkIGhhcmR3YXJlL2RyaXZlcnMuIg0KDQpXaGVuIGRlYWxpbmcgd2l0aCA4MDIuMTEg
cGFja2V0cyAqbm90IGluIG1vbml0b3IgbW9kZSogKGkuZS4sIG5vcm1hbA0Kb3BlcmF0aW9uYWwg
bW9kZSksIHRoZXJlIGFyZSBzaWduaWZpY2FudCBkaWZmZXJlbmNlcyBiZXR3ZWVuIERQREsgYW5k
IGVCUEYNCmFwcHJvYWNoZXM6DQplQlBGIHdpdGggODAyLjExIChOb24tTW9uaXRvciBNb2RlKQ0K
DQoqV2hhdCB5b3UgZ2V0OioNCg0KICAgLSBBbHJlYWR5ICpkZWNhcHN1bGF0ZWQgRXRoZXJuZXQg
ZnJhbWVzKiAtIHRoZSA4MDIuMTEgaGVhZGVycyBhcmUNCiAgIHN0cmlwcGVkIGJ5IHRoZSB3aXJl
bGVzcyBkcml2ZXINCiAgIC0gU3RhbmRhcmQgbmV0d29yayBzdGFjayBpbnRlZ3JhdGlvbg0KICAg
LSBBY2Nlc3MgdmlhIFhEUCwgVEMsIHNvY2tldCBmaWx0ZXJzLCBldGMuDQogICAtICpObyBhY2Nl
c3MgdG8gODAyLjExLXNwZWNpZmljIG1ldGFkYXRhKiBsaWtlIHNpZ25hbCBzdHJlbmd0aCwgcmV0
cnkNCiAgIGZsYWdzLCBvciB3aXJlbGVzcyBtYW5hZ2VtZW50IGZyYW1lcw0KDQoqTGltaXRhdGlv
bnM6Kg0KDQogICAtIENhbm5vdCBzZWUgODAyLjExIG1hbmFnZW1lbnQvY29udHJvbCBmcmFtZXMg
KGJlYWNvbnMsIHByb2JlIHJlcXVlc3RzLA0KICAgZXRjLikNCiAgIC0gTm8gYWNjZXNzIHRvIHdp
cmVsZXNzLXNwZWNpZmljIGluZm9ybWF0aW9uIChSU1NJLCBjaGFubmVsLCBldGMuKQ0KICAgLSBM
aW1pdGVkIHRvIHRoZSBkYXRhIHBheWxvYWQgdGhhdCBzdXJ2aXZlcyA4MDIuMTEg4oaSIEV0aGVy
bmV0IGNvbnZlcnNpb24NCg0KRFBESyB3aXRoIDgwMi4xMSAoTm9uLU1vbml0b3IgTW9kZSkNCg0K
KlNpbWlsYXIgbGltaXRhdGlvbnM6Kg0KDQogICAtIERQREsgYWxzbyByZWNlaXZlcyAqcG9zdC1w
cm9jZXNzZWQgRXRoZXJuZXQgZnJhbWVzKiBmcm9tIHdpcmVsZXNzIE5JQ3MNCiAgIGluIG5vcm1h
bCBtb2RlDQogICAtIFRoZSB3aXJlbGVzcyBkcml2ZXIgc3RpbGwgaGFuZGxlcyA4MDIuMTEgcHJv
Y2Vzc2luZyBiZWZvcmUgRFBESyBzZWVzDQogICB0aGUgcGFja2V0cw0KICAgLSAqTm8gcmF3IDgw
Mi4xMSBmcmFtZSBhY2Nlc3MqIHVubGVzcyB0aGUgaGFyZHdhcmUvZHJpdmVyIHNwZWNpZmljYWxs
eQ0KICAgc3VwcG9ydHMgaXQNCg0KKkRQREsgYWR2YW50YWdlczoqDQoNCiAgIC0gKkhpZ2hlciBw
YWNrZXQgcmF0ZXMqIC0gY2FuIGhhbmRsZSBtb3JlIHBhY2tldHMgcGVyIHNlY29uZA0KICAgLSAq
TG93ZXIgbGF0ZW5jeSogLSBieXBhc3NlcyBrZXJuZWwgbmV0d29ya2luZyBzdGFjaw0KICAgLSAq
TW9yZSBDUFUgY29udHJvbCogLSBkZWRpY2F0ZWQgY29yZXMsIHBvbGxpbmcgdnMgaW50ZXJydXB0
cw0KICAgLSBCZXR0ZXIgZm9yIGhpZ2gtdGhyb3VnaHB1dCB3aXJlbGVzcyBhcHBsaWNhdGlvbnMN
Cg0KS2V5IEluc2lnaHQNCg0KSW4gKm5vbi1tb25pdG9yIG1vZGUqLCBib3RoIERQREsgYW5kIGVC
UEYgYXJlIHdvcmtpbmcgd2l0aCB0aGUgKnNhbWUgaW5wdXQqOg0KRXRoZXJuZXQgZnJhbWVzIHRo
YXQgaGF2ZSBhbHJlYWR5IGJlZW4gY29udmVydGVkIGZyb20gODAyLjExIGJ5IHRoZQ0Kd2lyZWxl
c3MgZHJpdmVyLiBUaGUgODAyLjExLXNwZWNpZmljIGluZm9ybWF0aW9uIGlzIGFscmVhZHkgZ29u
ZS4NCldoZW4gdG8gQ2hvb3NlIFdoaWNoDQoNCipDaG9vc2UgZUJQRiB3aGVuOioNCg0KICAgLSBZ
b3UgbmVlZCBrZXJuZWwgaW50ZWdyYXRpb24NCiAgIC0gV29ya2luZyB3aXRoIGV4aXN0aW5nIG5l
dHdvcmsgc3RhY2sNCiAgIC0gTW9kZXJhdGUgcGFja2V0IHJhdGVzDQogICAtIFdhbnQgdG8gbGV2
ZXJhZ2UgZXhpc3RpbmcgZUJQRiB0b29saW5nDQoNCipDaG9vc2UgRFBESyB3aGVuOioNCg0KICAg
LSBIaWdoIHBhY2tldCByYXRlcyBhcmUgY3JpdGljYWwNCiAgIC0gWW91IG5lZWQgbWluaW11bSBs
YXRlbmN5DQogICAtIENhbiBkZWRpY2F0ZSBDUFUgY29yZXMNCiAgIC0gQnVpbGRpbmcgYSBzcGVj
aWFsaXplZCB3aXJlbGVzcyBhcHBsaWNhdGlvbg0KDQpUaGUgZnVuZGFtZW50YWwgbGltaXRhdGlv
biBpcyB0aGF0ICpuZWl0aGVyIGFwcHJvYWNoIGdpdmVzIHlvdSByYXcgODAyLjExDQphY2Nlc3Mg
aW4gbm9ybWFsIG9wZXJhdGlvbmFsIG1vZGUqIC0gdGhhdCByZXF1aXJlcyBtb25pdG9yIG1vZGUg
b3INCnNwZWNpYWxpemVkIGhhcmR3YXJlL2RyaXZlcnMuDQoNCk9uIFR1ZSwgU2VwIDksIDIwMjUg
YXQgMToyNeKAr1BNIERhdmlkIFAuIFJlZWQgdmlhIFJwbSA8DQpycG1AbGlzdHMuYnVmZmVyYmxv
YXQubmV0PiB3cm90ZToNCg0KPg0KPiBIaSBGcmFuayAtDQo+DQo+IEkgdGhpbmsgaXQgaXMgaW50
ZXJlc3RpbmcgYXMgYSBjb25jZXB0LiBBIHByb2plY3QgSSBhbSBhZHZpc2luZyBoYXMgYmVlbg0K
PiB1c2luZyBEUERLIHZlcnkgZWZmZWN0aXZlbHkgdG8gZ2V0IHJpZCBvZiB0aGUgaHVnZSBwYXRo
IGFuZCBsb2NraW5nIGRlbGF5cw0KPiBpbiB0aGUgY3VycmVudCBMaW51eCBuZXR3b3JrIHN0YWNr
LiBYRFAyIGNvdWxkIGJlIHN1cHBvcnRlZCBpbiBhIHJpbmczDQo+ICh1c2VyKSBhZGRyZXNzIHNw
YWNlLCBhY2hpZXZpbmcgYSBzaW1pbGFyIHJlc3VsdC4NCj4NCj4gQnV0IEkgZG9uJ3QgdGhpbmsg
WERQMiBpcyBnb2luZyB0aGF0IGRpcmVjdGlvbiAtIHNvIGl0IG1heSBiZSBzdHVja2ludG8NCj4g
dGhlIG1lc3Mgb2Yga2VybmVsIHNwYWNlIG5ldHdvcmtpbmcuIEFkZGluZyBlQlBGIG9ubHkgaGFz
IG1hZGUgdGhpcyBtb3JlIG9mDQo+IGEgbWVzcywgYnkgdGhlIHdheSAoYW5kIGFkZGluZyBhIG5l
dyAiY29tcGlsZXIiIHRoYXQgbmVlZHMgdG8gYmUgdmVyaXJpZWQNCj4gYXMgc2FmZSBmb3IgdGhl
IGtlcm5lbCkuDQo+DQo+IEkgd2lsbCBiZSB3YXRjaGluZyBob3cgdGhpcyBldm9sdmVzLg0KPg0K
PiBEYXZpZA0KPg0KPiBPbiBUdWVzZGF5LCBTZXB0ZW1iZXIgOSwgMjAyNSAwNjozMiwgIkZyYW50
aXNlayBCb3JzaWsiIDwNCj4gZnJhbnRpc2VrLmJvcnNpa0BnbWFpbC5jb20+IHNhaWQ6DQo+DQo+
DQo+DQo+ID4gSGVsbG8gdG8gYWxsLA0KPiA+DQo+ID4gTG9va3MgaW50ZXJlc3Rpbmc6DQo+ID4N
Cj4gaHR0cHM6Ly9tZWRpdW0uY29tL0B0b21fODQ5MTIveGRwMi10aGlzLWNoYW5nZXMtZXZlcnl0
aGluZy1hdC1sZWFzdC1mb3ItYWktbWwtaW5mcmFzdHJ1Y3R1cmUtODUwYzFiYTgyNzcxDQo+ID4N
Cj4gPg0KPiA+IEFsbCB0aGUgYmVzdCwNCj4gPg0KPiA+IEZyYW5rDQo+ID4NCj4gPiBGcmFudGlz
ZWsgKEZyYW5rKSBCb3JzaWsNCj4gPg0KPiA+DQo+ID4gKkluIGxvdmluZyBtZW1vcnkgb2YgRGF2
ZSBUw6RodDogKjE5NjUtMjAyNQ0KPiA+DQo+ID4gaHR0cHM6Ly9saWJyZXFvcy5pby8yMDI1LzA0
LzAxL2luLWxvdmluZy1tZW1vcnktb2YtZGF2ZS8NCj4gPg0KPiA+DQo+ID4gaHR0cHM6Ly93d3cu
bGlua2VkaW4uY29tL2luL2ZyYW50aXNla2JvcnNpaw0KPiA+DQo+ID4gU2lnbmFsLCBUZWxlZ3Jh
bSwgV2hhdHNBcHA6ICs0MjE5MTk0MTY3MTQNCj4gPg0KPiA+IGlNZXNzYWdlLCBtb2JpbGU6ICs0
MjA3NzUyMzA4ODUNCj4gPg0KPiA+IFNreXBlOiBjYXNpb2E1MzAyY2ENCj4gPg0KPiA+IGZyYW50
aXNlay5ib3JzaWtAZ21haWwuY29tDQo+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18NCj4gPiBDYWtlIG1haWxpbmcgbGlzdCAtLSBjYWtlQGxpc3RzLmJ1
ZmZlcmJsb2F0Lm5ldA0KPiA+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gY2FrZS1s
ZWF2ZUBsaXN0cy5idWZmZXJibG9hdC5uZXQNCj4gPg0KPiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBScG0gbWFpbGluZyBsaXN0IC0tIHJwbUBsaXN0
cy5idWZmZXJibG9hdC5uZXQNCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBycG0t
bGVhdmVAbGlzdHMuYnVmZmVyYmxvYXQubmV0DQo+DQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdCAtLSBjYWtlQGxpc3RzLmJ1
ZmZlcmJsb2F0Lm5ldApUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGNha2UtbGVhdmVA
bGlzdHMuYnVmZmVyYmxvYXQubmV0Cg==
