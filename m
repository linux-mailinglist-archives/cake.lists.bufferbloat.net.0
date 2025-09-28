Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A86EBA709B
	for <lists+cake@lfdr.de>; Sun, 28 Sep 2025 14:55:15 +0200 (CEST)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 6F00E701FD9;
	Sun, 28 Sep 2025 14:55:14 +0200 (CEST)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=g2/z+fDz
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1759064114;
 b=nNte3uAzQ6YIXtvVfvs2+TuXPSfCiOtFMUbWueTDQ+5mM2tGhG03NKa/uXSuQFBpEb66F
 A5sPoDjUnT6qv0gA38TsN2dRJGlzcsLq8RL2RS8dtGpXfCou0xXIsVGmiZHzBYzlDuPLIa2
 LiJ0DFYYArDos/YIkZNIVI904UoE/OE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1759064114; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=48+nC0tjYQdQrLAUlNBHZhee03ElVDgFCjt2kZ8lN6Y=;
 b=aZ2lDNaJLudQ7QpW9AYxZ4q8MYJaKe2DRxTUV09OWBtlMJAthTFBLZXyoW2kE6M1/tUkN
 LaHRPJyfHIkCqeHHBsBnL+N0hVDueqPIeTn02Vt7bOj/nKA3Xs8IiDu/V7LJQlo9i/Dl63e
 DSxi4KjRWEYfLk5juqmIJ64N9xH8pnQ=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com;
 arc=none;
 dmarc=pass header.from=gmail.com policy.dmarc=quarantine
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com; arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=gmail.com
 policy.dmarc=quarantine
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
	by mail.toke.dk (Postfix) with ESMTPS id 4CBC1701FBB
	for <cake@lists.bufferbloat.net>; Sun, 28 Sep 2025 14:55:10 +0200 (CEST)
Received: by mail-ej1-x634.google.com with SMTP id
 a640c23a62f3a-b3b3a6f4dd4so160463666b.0
        for <cake@lists.bufferbloat.net>;
 Sun, 28 Sep 2025 05:55:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759064108; x=1759668908;
 darn=lists.bufferbloat.net;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7m4lVnhRU7cKntLU60s+nxvEXVfZOxsii7jTe7Cicnc=;
        b=g2/z+fDz/VxfGEfnmt7IO1u01voFlk2Vi7NmOxjrn5o+obfFYocMd9OF7v4RoOVSSQ
         3nY2WvDX+Q1gNjpwn2K/hyAsA/9bXRqzcX9pinPOMjxyCzM37wZIO66gD1kBE7yEwMXb
         q/2hV924hlODi7ndoW0j1z+ZYIj+bvQBA98FjZOLMVA6WQnMBRMWiCCnmQyfJvCHjh8q
         2pJsULY0ADE9ss4BEu9X+gSNfQ+GsBFwLGPfwdeWAZJHga7hEKcT+zK/Qoen55N00Cfo
         XRiG4QpXl7U8ZnHlehrliw0f13UsIv5W0RaA536NT3lQWsH4Y98YbrgJP9AyC+f9S6es
         nuIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759064108; x=1759668908;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7m4lVnhRU7cKntLU60s+nxvEXVfZOxsii7jTe7Cicnc=;
        b=sudenuXfaOsc9fBaJTpXMxIBAZfWR43ka9TOPWfoTugGSCL60JNCdGLqnAHVEGSMvR
         Ts85uRxrQIS6KYdmP73k046IubnwVWcCUQhLFUYHn0XXoHW7310SkPUcChbNPCzryG68
         4YwcFG6PLpYa+tMkMZoRzJjzYLxWQnUdpKVWC9PjK7KBA/dPZDPISS+WG5WiYdyLtWmd
         qPPJrU05MmAHSYChynVsl4hMTlgmH1oLmkZNU+S/pwDFcck5tqnJ9Si3ttJkHy/TKXah
         fuLdGfNOV0kDrW2gNUgX3JbPGAE8e0hTe+NpWr2do1L6S1kQrFLlBhk8ePe/80HsxvyT
         6fyg==
X-Gm-Message-State: AOJu0Yzgjn/OFJpw0le734OabeE5oAvX+WwFCMryaKyncX+SU0PgQEg/
	T8xMNSqvDhUj3INRfUWqKP4F3FKPZIYcfQptVM/F5cDAGwkyAtZG9JPZLInDrvQLzEiv19FRUJp
	NEwky69H/FIdx3MIzRe1xKXGcyxhiUqTWKzUJ1xQ=
X-Gm-Gg: ASbGncvRYr1pLmxa42DfAQa0eBXajH0Fe5XGAxgak6NPsFJ7FFCL3HTNYhVVKTZnCdC
	QMrmS7nqn19fJ08UFjL2zX04AiyAPEcFKc7Fhud9BnCxfHvtYVNqbsVJj/6Dmt8jmHpId6GoeLh
	qziAr7PzCYVnO/4rfEojmTNnSmv1eNXCRQ3RexYYDtJoFE10y3E4PqHVID6eNtpr95mEeCl7knK
	km1NqXPDoscCjmqVGY=
X-Google-Smtp-Source: 
 AGHT+IF+I7M/mE2Au7sFZ1tKnwxy23kpe2ZgVzonO03wSS77Oud2uy1zV7CAIclqERWXGFbqpb04UuyZmHtHU/9e+Q4=
X-Received: by 2002:a17:907:6090:b0:b29:f698:9b3e with SMTP id
 a640c23a62f3a-b34bd633975mr1479781866b.62.1759064108240; Sun, 28 Sep 2025
 05:55:08 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.DEB.2.02.2509280400350.14652@nftneq.ynat.uz>
 <2064666241.42029.1759061544846@app.mailbox.org>
 <alpine.DEB.2.02.2509280523210.14652@nftneq.ynat.uz>
In-Reply-To: <alpine.DEB.2.02.2509280523210.14652@nftneq.ynat.uz>
From: Frantisek Borsik <frantisek.borsik@gmail.com>
Date: Sun, 28 Sep 2025 14:56:30 +0200
X-Gm-Features: AS18NWAkYbNDM-51k9YlxHWsgGgxSqXh1gXOaVP014FSA4xW4HyGeJ3z6niUqfQ
Message-ID: 
 <CAJUtOOj-FfPic8FPjy-QneCsvbtwtn4Zsxs+1yEsUqytEOEheg@mail.gmail.com>
To: David Lang <david@lang.hm>, m@jaap.pro
Cc: "cake@lists.bufferbloat.net" <cake@lists.bufferbloat.net>
Message-ID-Hash: T6QGGWTGA46CRH6JEUNXSS5VBDQNQLWS
X-Message-ID-Hash: T6QGGWTGA46CRH6JEUNXSS5VBDQNQLWS
X-MailFrom: frantisek.borsik@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Content-Filtered-By: Mailman/MimeDel 3.3.10
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: help request for cake on a large network
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/CAJUtOOj-FfPic8FPjy-QneCsvbtwtn4Zsxs+1yEsUqytEOEheg@mail.gmail.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SmFhcCAtIHRoYW5rIHlvdSB2ZXJ5IG11Y2ggZm9yIHJlY29tbWVuZGluZyBMaWJyZVFvUy4NCg0K
WWVzLCBiZXNpZGVzIGEgdHlwaWNhbCBsYXN0LW1pbGUgSVNQIHNjZW5hcmlvLCBMaWJyZVFvUyBp
cyBiZWluZyB1c2VkIGluDQp2YXJpb3VzIG90aGVyIHNldHVwcywgbGlrZSB0byBoZWxwIHdpdGgg
ZXZlbnQgV2ktRmkgLSBoZXJlIGlzIG9uZSBvZiB0aGUNCmRlcGxveW1lbnRzIGh0dHBzOi8vbGli
cmVxb3MuaW8vMjAyMy8xMS8xMy9zdWNjZXNzLXN0b3J5LXJhY2V3YXkvDQoNClRvIGJyYWcgYSBs
aXR0bGUsIG90aGVyIGRlcGxveW1lbnQgc2NlbmFyaW9zIHdlIHNlZSBhcmUgZGF0YSBjZW50ZXJz
LA0KY3J1aXNlIHNoaXBzLCB1bml2ZXJzaXR5IGNhbXB1c2VzLCBldmVuIG1pbmVzIDopDQoNCkFs
bCB0aGUgYmVzdCwNCg0KRnJhbmsNCg0KRnJhbnRpc2VrIChGcmFuaykgQm9yc2lrDQoNCg0KKklu
IGxvdmluZyBtZW1vcnkgb2YgRGF2ZSBUw6RodDogKjE5NjUtMjAyNQ0KDQpodHRwczovL2xpYnJl
cW9zLmlvLzIwMjUvMDQvMDEvaW4tbG92aW5nLW1lbW9yeS1vZi1kYXZlLw0KDQoNCmh0dHBzOi8v
d3d3LmxpbmtlZGluLmNvbS9pbi9mcmFudGlzZWtib3JzaWsNCg0KU2lnbmFsLCBUZWxlZ3JhbSwg
V2hhdHNBcHA6ICs0MjE5MTk0MTY3MTQNCg0KaU1lc3NhZ2UsIG1vYmlsZTogKzQyMDc3NTIzMDg4
NQ0KDQpTa3lwZTogY2FzaW9hNTMwMmNhDQoNCmZyYW50aXNlay5ib3JzaWtAZ21haWwuY29tDQoN
Cg0KT24gU3VuLCBTZXAgMjgsIDIwMjUgYXQgMjozOOKAr1BNIERhdmlkIExhbmcgPGRhdmlkQGxh
bmcuaG0+IHdyb3RlOg0KDQo+IEkgZ3Vlc3MgSSBkaWRuJ3QgZ2l2ZSBlbm91Z2ggaW5mbyBvbiBv
dXIgbmV0d29yayBhcmNoaXRlY3R1cmUuDQo+DQo+IFRoZSB1cHN0cmVhbSBJU1AgaXMgYmV0d2Vl
biA1MDBNYiBhbmQgMUcuDQo+DQo+IFdlIGRpc2Nvbm5lY3QgdGhlIGNvbmZlcmVuY2UgY2VudGVy
IGZpcmV3YWxsIGFuZCBjb25uZWN0IG91ciBmaXJld2FsbCBpbg0KPiBpdCdzDQo+IHBsYWNlIChM
aW51eCBzeXN0ZW0pDQo+DQo+IFRoaXMgYm9yZGVyIHJvdXRlciBjb25uZWN0IHRvIHRoZSBjb25m
ZXJlbmNlIGNlbnRlciBmaXJld2FsbCAoc28gdGhlaXINCj4gb2ZmaWNlcw0KPiBzdGlsbCBnZXQg
Y29ubmVjdGl2aXR5KSwgYW5kIHRvIHR3byByb3V0ZXJzIChMaW51eCwgb25lIHBlciBidWlsZGlu
ZykgdGhhdA0KPiBhcmUNCj4gYWxzbyBkaXJlY3QgY29ubmVjdGVkIChhIHRyaWFuZ2xlIGJldHdl
ZW4gdGhlIHRocmVlIHJvdXRlcnMuIFRoZSBib3JkZXINCj4gcm91dGVyDQo+IGlzIGRvaW5nIE5B
VCBmb3IgSVB2NCBhbmQgTVNTIHNxdWFzaGluZyBmb3IgSVBWNiB0aGF0IGdvZXMgb3V0IHRocm91
Z2ggYQ0KPiB0dW5uZWwNCj4gKGdvb2dsZSBkb2Vzbid0IGRvIFBNVFUgZGlzY292ZXJ5IG9uIElQ
djYpDQo+DQo+ICh3ZSBhcmUgY3VycmVudGx5IGRlYmF0aW5nIGJldHdlZW4gZGVwbG95aW5nIE9T
UEYgYmV0d2VlbiB0aGUgdGhyZWUNCj4gcm91dGVycywgb3INCj4ganVzdCBnaXZpbmcgdGhlbSBz
dGF0aWMgcm91dGVzLCBoaWdoIHByaW9yaXR5IGRpcmVjdCBhbmQgbG93IHByaW9yaXR5IGZvcg0K
PiB0aGUNCj4gaW5kaXJlY3QgcGF0aCkNCj4NCj4gRWFjaCBidWlsZGluZyByb3V0ZXIgdGhlbiBj
b25uZWN0cyB0byBvbmUgb3IgYSBmZXcgc3dpdGNoZXMgaW4gZGlmZmVyZW50DQo+IGNsb3NldHMN
Cj4gdGhhdCB0aGVuIGdvIHRvIGEgc3dpdGNoIGluIGVhY2ggcm9vbSAodHJ1bmtlZCBwb3J0cyku
DQo+IFdlIGh2ZSBhIGhhbmRmdWwgb2Ygd2lyZWQgdXNlcnMsIDEyMEFQcyBmb3IgdGhlIHVzZXJz
LCBhbmQgQVYgZXF1aXBtZW50DQo+IGZvciBlYWNoDQo+IG9mIHRoZSAxNiB0cmFja3MgdGhhdCBh
cmUgcmVjb3JkZWQgYW5kIHN0cmVhbWVkLg0KPg0KPiBhIHF1aWNrIGxvb2sgYXQgbGlicmVxb3Mg
YW5kIGl0J3MgcHVzaGluZyBmb3IgYSBtb3JlIGNvbXBsZXggbmV0d29yaw0KPiBsYXlvdXQgdGhh
dA0KPiB3aWxsIGJlIGEgaGFyZCBzZWxsIGF0IGxlYXN0IHRoaXMgeWVhciAobGFzdCB5ZWFyIG91
ciBqdW5pcGVyIHJvdXRlcnMgZmVsbA0KPiBvdmVyDQo+IHVuZGVyIHRoZSBNU1Mgc3F1YXNoaW5n
IGxvYWQgZm9yIElQdjYsIHNvIHdlIGFyZSBnb2luZyB0byBMaW51eCBzeXN0ZW1zDQo+IHRoaXMN
Cj4geWVhciwgZ2V0dGluZyBwZW9wbGUgdG8gY29uc2lkZXIgY2FrZSBpcyBoYXJkIGVub3VnaCwg
bGV0IGFsb25lIGFub3RoZXINCj4gbWlkZGxld2FyZSBib3gpDQo+DQo+IERhdmlkIExhbmcNCj4N
Cj4gT24gU3VuLCAyOCBTZXAgMjAyNSwgSmFhcCBkZSBWb3Mgd3JvdGU6DQo+DQo+ID4gRGF0ZTog
U3VuLCAyOCBTZXAgMjAyNSAxNDoxMjoyNCArMDIwMCAoQ0VTVCkNCj4gPiBGcm9tOiBKYWFwIGRl
IFZvcyA8bUBqYWFwLnBybz4NCj4gPiBSZXBseS1UbzogImNha2VAbGlzdHMuYnVmZmVyYmxvYXQu
bmV0IiA8Y2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQ+DQo+ID4gVG86IERhdmlkIExhbmcgPGRh
dmlkQGxhbmcuaG0+LCBjYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldA0KPiA+IFN1YmplY3Q6IFJl
OiBbQ2FrZV0gaGVscCByZXF1ZXN0IGZvciBjYWtlIG9uIGEgbGFyZ2UgbmV0d29yaw0KPiA+DQo+
ID4gSGkgRGF2aWQsDQo+ID4NCj4gPiBJIGhhdmVuJ3QgdHJpZWQgaXQgbXlzZWxmIHlldCwgYnV0
IHRoaXMgc291bmRzIGxpa2UgYSB1c2UgY2FzZSBmb3Igd2hpY2gNCj4gTGlicmVRb1MgaXMgc3Vp
dGFibGUuIEhvd2V2ZXIsIExpYnJlUW9TIHdvdWxkIGZpdCBiZXN0IGlmIHlvdSBjYW4gYnVpbGQN
Cj4gc29tZXRoaW5nIGluIGxpbmUgd2l0aCB0aGUgZGVzaWduIGFzc3VtcHRpb25zOg0KPiBodHRw
czovL2xpYnJlcW9zLnJlYWR0aGVkb2NzLmlvL2VuL2xhdGVzdC9kb2NzL3YyLjAvZGVzaWduLmh0
bWwNCj4gPiBTcGVjaWZpY2FsbHkgdGhlIHBhcnQgYWJvdXQgcHV0dGluZyBpdCBpbiBiZXR3ZWVu
IG90aGVyIHJvdXRlcnMgYW5kDQo+IHJ1bm5pbmcgYSByb3V0aW5nIHByb3RvY29sIHdpdGggdGhv
c2UuDQo+ID4NCj4gPiBUaGVyZSBhcmUgc29tZSBnb29kIHJlY29tbWVuZGF0aW9ucyBhcm91bmQg
c3VpdGFibGUgaGFyZHdhcmUgYW5kDQo+IHNpemluZy9zY2FsaW5nIHRvbzoNCj4gaHR0cHM6Ly9s
aWJyZXFvcy5yZWFkdGhlZG9jcy5pby9lbi9sYXRlc3QvZG9jcy92Mi4wL3JlcXVpcmVtZW50cy5o
dG1sDQo+ID4NCj4gPiBXaGF0IGtpbmQgb2YgdXBzdHJlYW0gYmFuZHdpZHRoIGFyZSB5b3Ugd29y
a2luZyB3aXRoIGF0IHRoZSBjb25mZXJlbmNlPw0KPiBJIHJ1biB0aGUgTWlrcm90aWsgaW1wbGVt
ZW50YXRpb24gb2YgQ0FLRSBvbiBhIGNhbXBzaXRlLiBJdCByZWFsbHkgaGVscHMgdG8NCj4gZ2V0
IHRoZSBtb3N0IG91dCBvZiBvdXIgYXN5bW1ldHJpY2FsIGdpZ2FiaXQgY29heCBsaW5lIG92ZXIg
dGhlcmUsIG5vIGZpYmVyDQo+IGF2YWlsYWJsZSB5ZXQuIFNvIGZhciwgd2UgZ290IGNsb3NlIHRv
IDUwMCBkZXZpY2VzIG9uIG91ciBvdXRkb29yIFdpLUZpDQo+IG5ldHdvcmsgd2l0aCBtb3N0bHkg
Z29vZCBleHBlcmllbmNlcywgYW1hemluZy4gQmVmb3JlIHRoYXQsIEZRX0NvRGVsIG9uDQo+IFBm
U2Vuc2Ugd29ya2VkIHdlbGwgdG9vLCBidXQgdGhlIG5ldHdvcmsgd2Fzbid0IGFzIGJ1c3kgYmFj
ayB0aGVuLiBJJ2QgbGlrZQ0KPiB0byBzZWUgQ0FLRSBvbiBCU0Qgc29tZSBkYXkuDQo+ID4NCj4g
PiBLaW5kIHJlZ2FyZHMsDQo+ID4gSmFhcCBkZSBWb3MNCj4gPg0KPiA+DQo+ID4+IE9uIDA5LzI4
LzIwMjUgMTowNiBQTSBDRVNUIERhdmlkIExhbmcgPGRhdmlkQGxhbmcuaG0+IHdyb3RlOg0KPiA+
Pg0KPiA+Pg0KPiA+PiBJJ20gc3RhcnRpbmcgdG8gcHJlcGFyZSBmb3IgdGhlIG5leHQgU2NhbGUg
Y29uZmVyZW5jZSBhbmQgd2UgYXJlDQo+IHN3aXRjaGluZyBmcm9tDQo+ID4+IEp1bmlwZXIgcm91
dGVycyB0byBMaW51eCByb3V0ZXJzLiBUaGlzIGdpdmVzIG1lIHRoZSBhYmlsaXR5IHRvDQo+IGlt
cGxlbWVudCBjYWtlLg0KPiA+Pg0KPiA+PiBPbmUgcHJvYmxlbSB3ZSBoYXZlIGlzIGNsYXNzZXMg
dGhhdCB0ZWxsIGV2ZXJ5b25lICdnbyBkb3dubG9hZCB0aGlzJw0KPiB0aGF0DQo+ID4+IHRyaWdn
ZXIgaHVuZHJlZHMgb2YgcGVvcGxlIHRvIGhhbW1lciB0aGUgbmV0d29yayBhdCB0aGUgc2FtZSB0
aW1lICh0aGlzDQo+IGlzIGJvdGgNCj4gPj4gYSB3aWZpIGFuZCBhIG5ldHdvcmsgYmFuZHdpZHRo
IGlzc3VlLCB3aWZpIGlzIGJlaW5nIHdvcmtlZCBvbikNCj4gPj4NCj4gPj4gVGhlIG5ldHdvcmsg
aXMgcHJldHR5IGZsYXQsIGEgY291cGxlIG9mIHN1Ym5ldHMgZWFjaCBvbiBpcHY0IGFuZCBpcHY2
Lg0KPiA+Pg0KPiA+PiBBbnkgc3VnZ2VzdGlvbnMgb24gaG93IHRvIGNvbmZpZ3VyZSBjYWtlIGZv
ciB0aGlzIHNvcnQgb2YgZW52aXJvbm1lbnQNCj4gd2hlcmUNCj4gPj4gdGhlcmUgYXJlIHNvIG1h
bnkgZGV2aWNlcz8NCj4gPj4NCj4gPj4gRGF2aWQgTGFuZw0KPiA+PiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiA+PiBDYWtlIG1haWxpbmcgbGlzdCAt
LSBjYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldA0KPiA+PiBUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIGNha2UtbGVhdmVAbGlzdHMuYnVmZmVyYmxvYXQubmV0DQo+ID4NCj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gQ2FrZSBtYWlsaW5n
IGxpc3QgLS0gY2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQNCj4gVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byBjYWtlLWxlYXZlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldA0KPg0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxp
c3QgLS0gY2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byBjYWtlLWxlYXZlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldAo=
