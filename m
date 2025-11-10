Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id DDA49C4D0EC
	for <lists+cake@lfdr.de>; Tue, 11 Nov 2025 11:33:18 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 5BB1694812D;
	Tue, 11 Nov 2025 11:33:18 +0100 (CET)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; secure) header.d=connectivitycap.com header.i=@connectivitycap.com header.a=rsa-sha256 header.s=google header.b=QvvdJdcU
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1762857198;
 b=Uqa6oDnyZ3uG4FBUgFFEsWuVg2vVXLHlImMmEPMNmFaZmAl+3AIQs/01SfajbLWOsSTbr
 iFmBulI4gjq+KYUSMl87yfDEL6NO3SoOigC5VlFoAW8KHGWKtH4C9UAAtsdtBxmtGAt1jvd
 edQURwLlIaBKQ4+CxX9GYbUKIYR2dFU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1762857198; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=Dj7Np2GhyaS+JxFTyLBXEAYcP6hu2wbKQyaYUt9WHJM=;
 b=YjL3+vUU3DS08tjGhU3hsLhjmKoe1HJ/NBMyWQlL1wS3f4cTa7/WV3kjIVIO8wXTpsTXO
 VyHOhSCVwNrhz6XfI0qYefkvxwlDy7EzPBbVpSLq/J8IK5eJ6CpiiXBAqjRzk2W+B6VpTpo
 1YTkxDJWCHgOjYZ2M4IJTWIwdQc2MsM=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=connectivitycap.com;
 dkim=pass header.d=connectivitycap.com;
 arc=none;
 dmarc=none
Received: from mail-yw1-x1131.google.com (mail-yw1-x1131.google.com
 [IPv6:2607:f8b0:4864:20::1131])
	by mail.toke.dk (Postfix) with ESMTPS id 681D1942629
	for <bloat@lists.bufferbloat.net>; Mon, 10 Nov 2025 16:39:20 +0100 (CET)
Received: by mail-yw1-x1131.google.com with SMTP id
 00721157ae682-71d71bcab69so26608987b3.0
        for <bloat@lists.bufferbloat.net>;
 Mon, 10 Nov 2025 07:39:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=connectivitycap.com; s=google; t=1762789159; x=1763393959;
 darn=lists.bufferbloat.net;
        h=references:to:cc:in-reply-to:date:subject:mime-version:message-id
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=vLwdOy7oNmTdbMtFDN4oQVGJv/C3ks9sJSAYGAvWVqM=;
        b=QvvdJdcUbecX/gTxo+iVHIgv3mlCaybB5DMPyF0Xt03DPO9nCFQt7tW3bbOsmGaYTJ
         i6ZxWaz9zYM7fp6HqexEvcaL7Ob03bckan1rbbBi7s+xsuxA02xlbWkiAWIligoFywfe
         a7zNJnW8MjxLYjrzd8ydP1GuTsg1EvRqICG9gvZRQdkQGxq5/8S6Q39fUl5Ksev7ZOJU
         NL4MUvv9Z7hyLWJvUUQ0ISxFErtcqHNDncr4AWR+PP80DTzu0o2t7HQIcFsT73HrsBeM
         HmS4mDIdKan/AOBImFBj/s6/jv2DxmG1ADBAN7VAO1M8UWcaUDgk3foc3MlzWiE6ydmd
         MMEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762789159; x=1763393959;
        h=references:to:cc:in-reply-to:date:subject:mime-version:message-id
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vLwdOy7oNmTdbMtFDN4oQVGJv/C3ks9sJSAYGAvWVqM=;
        b=Wu9Rmaq0qZduaGbrf3T5dL58CT4Ki3n5j1UZGyeS6+55wH+yF8mum4zwNS160vsMQ9
         2WoClT8yUVBJ0ZIA9c6gC/Tan9TP8u0e3NfZDE97jrXCubvT0f43tU+ZghuEwFCfKvh9
         HSGLo54VCTi0hTWhEHUwcjNx8A7eiDCGdCJZpvdatN5R1zY7QALfMx7cAXWT+VuzJneb
         sXZ12559HiXYh/0YRnojKw11zJgdecDVKw8V4Crxtcq3wJCOpCvOx8ZjephTkTZVQdzy
         7A1Ou8awoUMDoykOBBkImZh0y4rmFqWOAaewGQC/bkVZSErMEqXPRc9xjSZDPiKNXI2C
         2j0g==
X-Forwarded-Encrypted: i=1;
 AJvYcCUxsvOgvC7bdC5hrzeuFxoyhZhXjwBTbFJgApHQXfO3HJ677ri7WOt6U266mUB8RHKVeJcD1A==@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YyDPsixLYZwKoQVGRrDtaZ8kdj47/GslIWKg9JhrspRsGd+CUcV
	Lm7b9c7H1X3slXX2DGy03fQYgIP6kr/eEgMD5EdkOuEQywAfAlYIIn0EPwm4H3vGrGc=
X-Gm-Gg: ASbGnctKNZ+WwTRYAGphwttMfNkix2grw46qOOxq78iIYnw/s801jd7ghA8kgLtuG9L
	TnI0y+LxQ/xmLrQa0tgxKzQnqC3SIoGrlIroDe3aVoC1tGbn9R6rSpjiXpW669fk7Zu3QJezArs
	5s/0ruyiII/BbQTkNsTiXk8QfZCc4pphgXH872nOQCab1+5ccPaMoFNfJtArlVhOaqDbrxwLLXf
	eXopCHUKnZh11OwGXQ2wtrSP8vYv6HNW6CQtj3cxE0AU4gyrza9V1Pp5Uam5VAAI/CExubZ0NqJ
	a80qY5hISdTZqcYPvsLZ1Cbl74uUD3hcJMKUV7pLaDho7GqQVncBfcFiRtenLjupMLD4a2MpG02
	MKyNX7lLIKMU1WjDhfxnZxUnveuEA2z3V6nPVg+qnDe/WsumvXGjj+3s6Ee75079L90RDWgyHEf
	fTn/Lhj41JmzjtTlq5On+g53J4M15AKe8C2l3qB1pTTXqGTfO5Sjq5UYiCLgOg+v8ywm+U/2cdd
	sNbQtoXzcIngLJLnrwyk32NxTY=
X-Google-Smtp-Source: 
 AGHT+IEF6l3SO1EIwPsqMpBvpcVB1JTJDcmPURwXGC8gY2RVUI4L56QP7J/XcGY5JOYc3AfQSD8F7Q==
X-Received: by 2002:a05:690c:c019:b0:787:c621:d678 with SMTP id
 00721157ae682-787d5452af6mr62007427b3.58.1762789159077;
        Mon, 10 Nov 2025 07:39:19 -0800 (PST)
Received: from smtpclient.apple
 (99-95-167-128.lightspeed.sntcca.sbcglobal.net. [99.95.167.128])
        by smtp.gmail.com with ESMTPSA id
 00721157ae682-787d6809dfbsm24628667b3.11.2025.11.10.07.39.17
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Nov 2025 07:39:18 -0800 (PST)
From: Jim Forster <jim@connectivitycap.com>
Message-Id: <2A98A137-B465-4DA1-9BC8-72A38A3A4DEA@connectivitycap.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.300.11\))
Date: Mon, 10 Nov 2025 07:39:06 -0800
In-Reply-To: <CDF65ACE-06AD-4C4A-8F74-14B704B89637@gmx.de>
Cc: J Pan <Pan@uvic.ca>,
 dan <dandenson@gmail.com>,
 Frantisek Borsik <frantisek.borsik@gmail.com>,
 Cake List <cake@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>,
 codel@lists.bufferbloat.net,
 libreqos <libreqos@lists.bufferbloat.net>,
 l4s-discuss@ietf.org,
 starlink@lists.bufferbloat.net
To: Sebastian Moeller <moeller0@gmx.de>
References: <9390D9DA-3C77-429F-A41D-E0FECD52FF06@connectivitycap.com>
 <CAJUtOOjt+DajPifDNLNBOT_xwNWL_Wec5Gf_O91HMDdwpxtmeg@mail.gmail.com>
 <CAA_JP8XOeSOqbZJPH=1_oWMD055vOUxHipxJMs8sbsHLu5MHCA@mail.gmail.com>
 <CAJUtOOhiu8CVLARsiMKUkN4s87_VUr17su1Nr_4aManrwkCQAg@mail.gmail.com>
 <CAJUtOOhzJAymDiKsnRPho80B8GZ4wzd8W7FWccS=uhiQPd3KOg@mail.gmail.com>
 <2036296F-1567-4B66-BD8C-3AB49EBD5AA3@connectivitycap.com>
 <CAHn=e4iyb6FDc+Jrwx+5jdhZ35qoM8Weoz=Ktvth-NdUKZ7VmA@mail.gmail.com>
 <3934C9BE-EED5-4DF7-9451-E438E0FEFE3E@connectivitycap.com>
 <CAHn=e4h_K-5J2OZ4tSRBvgHtg729T=ayXw=d5TMLC=oRrFpdkA@mail.gmail.com>
 <CAA_JP8Uh3L7BB=WqU8dkMGL2hhFTsdDCkqt-grPb04v7b9v8vQ@mail.gmail.com>
 <CAHn=e4gGtXLd5CUi-9M9KKxeaQqj6jMBKJppZKjm4SvMaPR6ug@mail.gmail.com>
 <93519830-549F-459A-A737-792F18F3241C@gmx.de>
 <F9170829-9358-4D9D-8B23-199E54C102B9@connectivitycap.com>
 <CDF65ACE-06AD-4C4A-8F74-14B704B89637@gmx.de>
X-Mailer: Apple Mail (2.3864.300.11)
X-MailFrom: jim@connectivitycap.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation
Message-ID-Hash: BQU3TKCVWKXIGZITRFQSYRAPECR35WGT
X-Message-ID-Hash: BQU3TKCVWKXIGZITRFQSYRAPECR35WGT
X-Mailman-Approved-At: Tue, 11 Nov 2025 11:33:16 +0100
X-Content-Filtered-By: Mailman/MimeDel 3.3.10
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [Starlink] [LibreQoS] Re: Re: Keynote: QoE/QoS - Bandwidth Is A
 Lie! at WISPAPALOOZA 2025 (October 16)
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/2A98A137-B465-4DA1-9BC8-72A38A3A4DEA@connectivitycap.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

U2ViYXN0aWFuIOKAlCB0aGFua3MgZm9yIGFsbCB0aGF0LiAgQWdhaW4gSSBmaW5kIHRoZXJlIGlz
IGxvdHMgSSBkb27igJl0IGtub3csICBUaGF04oCZcyBhIHJlbGllZiwgb3RoZXJ3aXNlIGxpZmUg
d291bGQgYmUgYm9yaW5nLA0KDQogIOKAlCBKaW0NCg0KPiBPbiBOb3YgOSwgMjAyNSwgYXQgMTA6
MjfigK9QTSwgU2ViYXN0aWFuIE1vZWxsZXIgPG1vZWxsZXIwQGdteC5kZT4gd3JvdGU6DQo+IA0K
PiANCj4gDQo+IE9uIDEwIE5vdmVtYmVyIDIwMjUgMDU6NDg6MzggQ0VULCBKaW0gRm9yc3RlciA8
amltQGNvbm5lY3Rpdml0eWNhcC5jb20gPG1haWx0bzpqaW1AY29ubmVjdGl2aXR5Y2FwLmNvbT4+
IHdyb3RlOg0KPj4+IE9uIE5vdiA4LCAyMDI1LCBhdCAxOjEx4oCvUE0sIFNlYmFzdGlhbiBNb2Vs
bGVyIDxtb2VsbGVyMEBnbXguZGU+IHdyb3RlOg0KPj4+IA0KPj4+IEFzIGEgbWFya2V0IHJlYWxp
c3QgKHRoYXQgaXMgc29tZW9uZSB3aG8gYWNjZXB0cyBlZmZpY2llbnQgbWFya2V0IHdoZW4gaGUg
c2VlcyB0aGVtLCBidXQgZG9lcyBub3QgbmFpdmUgYmVsaWV2ZSBpbiB0aGUgZmFpcnkgdGFsZXMg
b2YgdGhlIGludmlzaWJsZSBoYW5kIG9mIHRoZSBtYXJrZXQpIEkgdGhpbmsgdGhhdCB3ZSB3b3Vs
ZCBiZSBvZnRlbiBtdWNoIGJldHRlciBvZmYgd2l0aCBhIGNvbXBldGVudGx5IG1hbmFnZWQvcmVn
dWxhdGVkIG1vbm9wb2x5IHRoYW4gd2l0aCBkdW8tIHRvIG9saWdvcG9saWVzIHRoYXQgYXJlIHRy
ZWF0ZWQgYXMgaWYgdGhleSB3ZXJlIGVmZmljaWVudCBtYXJrZXRzLi4uIEluZnJhc3RydWN0dXJl
IChhbmQgYXQgbGVhc3QgYWNjZXNzIG5ldHdvcmtzIGFyZSBhdCBsZWFzdCBpbmZyYXN0cnVjdHVy
ZS1pc2ggSU1ITykgaXMgbm90IHNvbWV0aGluZyB3aGVyZSB0aGUgZnJlZSBtYXJrZXQgdHlwaWNh
bGx5IGV4Y2VscyBhdC4NCj4+IA0KPj4gDQo+PiBZZWFoLCBJIGFsc28gZG9u4oCZdCB0aGluayB0
aGVyZeKAmXMgYW4gZWZmaWNpZW50LCBmYWlyLCBtYXJrZXQgaGVyZSB0aGF0IGdldHMgdXMgd2hh
dCB3ZSB3LiBJbiBzb21lIHdheXMsIHRoZSBEaWdpdGFsIERpdmlkZSBpcyBhbiBleHBlY3RlZCBv
dXRjb21lIG9mIGNhcGl0YWwgYWxsb2NhdGlvbiBkZWNpc2lvbnMgYnkgZGVyZWd1bGF0ZWQgY29t
cGFuaWVzIGluIGEgc2VjdG9yIHRoYXQgaGFzIGVjb25vbWllcyBvZiBzY2FsZSBhbmQgbmV0d29y
ayBlZmZlY3RzLg0KPiANCj4gSW5kZWVkLi4uIEkganVzdCBub3RlIHRoYXQgdGhlIFBPVFMgbmV0
d29yayB3YXMgbXVjaCBtb3JlIGNvbXByZWhlbnNpdmUgaW4gaXRzIHJlYWNoIGR1ZSB0byBzdHJp
Y3RlciByZWd1bGF0aW9uLi4uDQo+IA0KPj4gDQo+PiBBdCB0aGUgc2FtZSB0aW1lLCBhICJjb21w
ZXRlbnRseSBtYW5hZ2VkL3JlZ3VsYXRlZCBtb25vcG9seeKAnSBtYXkgYmUgYXMgdW5jb21tb24g
YXMgSG9tbyBFY29ub21pY3VzIHNpdGluZ3MgYXJlLiANCj4gDQo+IE5hLCBvbmx5IGlmIHdlIHB1
dCBvdXIgYWltIGZvciBjb21wZXRlbmNlIHRvbyBoaWdoIDspIC4gT3ZlciBoZXJlIGVsZWN0cmlj
aXR5LCB3YXRlciBhbmQgc3RyZWV0ICJuZXR3b3JrcyIgYXJlIGRlY2UNCj4gbnRseSByZWd1bGF0
ZWQgaW5mcmFzdHJ1Y3R1cmUuDQo+IA0KPj4gV2hpY2ggZXhhbXBsZSBjYW4geW91IGNpdGU/IE5a
PyBVSz8gU0U/IEFuZCBoYXZlIHRoZXkgdHJhbnNpdGlvbmVkIHNtb290aGx5IHRvIG5ldyB0ZWNo
bm9sb2d5IHRoYXQgd291bGQgZGltaW5pc2ggdGhlIHZhbHVlIG9mIHRoZWlyIGV4aXN0aW5nIGlu
ZnJhc3RydWN0dXJlPyAgDQo+IA0KPiBUcmlja3kuLi4gZm9yIGluZnJhc3RydWN0dXJlIGluIGdl
bmVyYWwgSSBiZWxpZXZlIHRoZXJlIGFyZSBsb2FkcyBvZiBleGFtcGxlcyBpbiBFdXJvcGUsIGZv
ciBpbnRlcm5ldCBhY2Nlc3MgbmV0d29ya3MgaXQgZ2V0cyBhIGJpdCB0cmlja2llciwgYnV0IHRo
ZXJlIGFyZSBzb21lIGV4YW1wbGVzIG9mIGNvbWJpbmluZyBhIHNpbmdsZSBuZXR3b3JrIHdpdGgg
b3BlcmF0b3IgY29tcGV0aXRpb24uIChBbmQgdGhhdCBpcyBteSBwcmVmZXJyZWQgbW9kZWwsIG1v
bm9wb2x5IG5ldHdvcmsgd2l0aCByZWd1bGF0ZWQgYW5kIGZhaXIgYWNjZXNzIGZvciBvcGVyYXRv
cnMsIGFuZCB0aGVuIGhhdmUgYXMgbWFueSBvcGVyYXRvcnMgYXMgcG9zc2lia2Ugb2ZmZXIgdGhl
aXIgc2VydmljZXMgb3ZlciB0aGF0IG5ldHdvcmspLiBCdXQgcGFydGlhbCBleGFtcGxlcyBleGlz
dCwgZS5nLiB0aGUgZmliZXIgbmV0d29yayBidWlsdCBpbiBBbXN0ZXJkYW0sIG9yIHRoZSBwb2lu
dCB0byBwb2ludCBmaWJlciBuZXR3b3JrIGluIHN3aXR6ZXJsYW5kIHdoZXJlIHRoZSBpbmN1bWJl
bnQgYnVpbHQgbW9zdCBvZiB0aGUgZnR0aCBuZXR3b3JrIGFuZCBpcyByZWd1bGF0ZWQgdG8gcGh5
c2ljYWxseSB1bmJ1bmRsZSBpbmRpdmlkdWFsIGxpbmVzIHRvIGVuZCBjdXN0b21lcnMsIHJlc3Vs
dHVuZyBpbiBzdXJwcmlzaW5nIGNvbXBldGl0aW9uIG9mIElTUHMgb3BlcmF0aW5nIGRpZmZlcmVu
dCB0ZWNobm9sb2d5IG92ZXIgdGhlIHNhbWUgZmliZXJzIChzd2lzc2NvbSB1c2VzIHhnc3Bvbiwg
c2FsdC5jaCA8aHR0cDovL3NhbHQuY2gvPiB1c2VzIHRoZWlyIG93biB4Z3NwaW4gT0xUcywgaW5p
dDcgdXNlcyBBT04gdXAgdG8gMjUgR2JwcykuIFN3ZWRlbiBhbHNvIHNlZW1zIHRvIGhhdmUgYSBk
ZWNlbnQgKGFsYmVpdCBub3QgcmVndWxhdGVkKSBzZXBhcmF0aW9uIGJldHdlZW4gbmV0d29yayBv
cGVyYXRvcnMgYW5kIElTUHMgdGhhdCBvZmZlciBzZXJ2aWNlcyBvdmVyIHRoZXNlIG5ldHdvcmtz
Lg0KPiANCj4gDQo+PiANCj4+IEkgcmVjYWxsIHRoYXQgaW4gdGhlIFVTIHByaW9yIHRvIHRoZSAu
Y29tIGJvb20sIHRoZSB0ZWxjb+KAmXMgaWRlYSBvZiBicm9hZGJhbmQgd2FzIElTRE4gb3IgbWF5
YmUgRFNMIG9yIFNNRFMuIFRoZXkgd3JvdGUgbWFueSBwYXBlcnMsIGhhZCBsb3RzIG9mIHRyaWFs
cywgYnV0IGRpZCBub3QgYWdncmVzc2l2ZWx5IGRvIGJyb2FkYmFuZCwgIA0KPiANCj4gWWVzLCBJ
IGFncmVlIHRoYXQgdGhlIG9sZCBtb2RlbCBvZiBhIHZlcnRpY2FsbHkgaW50ZWdyYXRlZCBmdWxs
IHNlcnZpY2UgdGVsY28gYnJlZWQgY29tcGxhY2VuY3kgYW5kIHdhcyBub3QgaWRlYWwgZWl0aGVy
IChldmVuIHRob3VnaCB0aGUgUE9UUyBuZXR3b3JrIGhhZCBiZXR0ZXIgcmVhY2ggdGhhbiB0aGUg
SEZDIG5ldHdvcmtzKS4NCj4gDQo+IDogJ0V2ZXJ5b25lIGtuZXfigJkgdGhhdCB0aGUgY2FibGVj
b3PigJkgSEZDIHdvdWxkIG5ldmVyIHdvcmssIGFuZCB0aGF0IHRoZXkgY291bGQgbm90IGRvIGRp
Z2l0YWwgYW5kIGNlcnRhaW5seSBub3Qgdm9pY2UsICBIRkMgd29ya2VkLCBhbmQgRE9DU0lTIHdh
cyBhIGJpZyBzdWNjZXNzLiBUaGF0IHByZXNzdXJlZCB0aGUgdGVsY29zIHRvIHN0YXJ0IGFjdHVh
bGx5IGRlcGxveWluZyBEU0wsIGJ1dCBpdCB3YXMgdG9vIGxhdGUsIGFuZCB0aGUgY2FibGVjb3Mg
aGF2ZSBkb21pbmF0ZWQgVVMgYnJvYWRiYW5kIGZvciBhIGNvdXBsZSBvZiBkZWNhZGVzLiANCj4g
DQo+IFRoZSBvdXRjb21lIGluIEdlcm1hbnkgd2FzIGRpZmZlcmVudC4uLiBoZmMgbmV0d29ya3Mg
b25seSBldmVyIHJlYWNoZWQgYXJvdW5kIDc1JSBvZiBob3VzZWhvbGRzIGFuZCBuZXZlciBleGNl
ZWRlZCAxMCBvZiBlc3RpbWF0ZWQgNDUgbWlsbGlvbiBhY2Nlc3Mgc2l0ZXMgZm9yIGJyb2FkYmFu
ZCBzZXJ2aWNlcywgd2hpbGUgRFNMIHN0aWxsIHNlcnZlcyBhbG1vc3QgMjMgbWlsbGlvbiAoYW5k
IHJlYWNoZXMgYWxtb3N0IGFsbCA0NSBtaWxsaW9uKS5CdXQgeWVzIG9uIHRoZSB0ZWNobm9sb2d5
IHNpZGUgaXQgbGlrZWx5IHdhcyBoZmMncyBwcmVzc3VyZSB0aGF0IHNwZWQgdXAgZHNsIGRldmVs
b3BtZW50Lg0KPiBOb3csIHRoZSBnZXJtYW4gbWFya2V0IGlzIGEgYml0IG9kZCwgYXMgY3VzdG9t
ZXJzIGFyZSBuZWl0aGVyIHRlcnJpYmx5IGh1bmdyeSBmb3IgaGlnaCBjYXBhY2l0eSBub3IgdGVy
cmlibHkgcHJpY2Ugc2Vuc2l0aXZlICh0aGUgb2xkIGV4LW1vbm9wb2x5IHRlbGNvIHN0aWxsIHNl
cnZlcyBtb3N0IGRzbCBjdXN0b21lcnMgaW4gc3BpdGUgb2YgYmVpbmcgbW9yZSBleHBlbnNpdmUg
ZHVlIHRvIHZhbGlkIHJlZ3VsYXRvcnkgaW50ZXJ2ZW50aW9ucykuDQo+IA0KPiBSZWdhcmRzDQo+
ICAgICAgICBTZWJhc3RpYW4NCj4gDQo+IFAuUy46IEkgdW5kZXJzdGFuZCB0aGF0IGluIHRoaXMg
cXVlc3Rpb24gdGhlcmUgYXJlIG9mIGNvdXJzZSBtdWx0aXBsZSBlcXVhbGx5IHZhbGlkIGFuZCBq
dXN0aWZ5YWJsZSBwb3NpdGlvbnMgb25lIGNvdWxkIHRha2UsIHRoaXMganVzdCBoYXBwZW5zIHRv
IGJlIG1pbmUuIEEgY291cGxlIG9mIGZyaWVuZGx5IElTUHMgZm9yIGV4YW1wbGUgcmVqZWN0IHRo
aXMgaWRlYSBhcyB0aGV5IGNvbnNpZGVyIGFjY2VzcyBuZXR3b3JrcyB0byBiZSBhIGZpZWxkIHdo
ZXJlIElTUHMgY2FuIGRpZmZlcmVudGlhdGUgYW5kIGNvbXBldGUgKHNvbWUgb2YgdGhlbSBob3dl
dmVyIHByb3Bvc2VkIGEgcmVndWxhdGVkIG1pZGRsZSBtaWxlIHRvIGJlIGFibGUgdG8gZWNvbm9t
aWNhbGx5IHJlYWNoIElYcyBhbmQgcGVlcmluZyBwb2ludHMgdG8gZXZlbiB0aGUgcGxheWluZyBm
aWVsZCkuDQo+IA0KPj4gDQo+PiBKaW0NCj4+IA0KPj4gDQo+Pj4gDQo+PiANCj4gDQo+IC0tIA0K
PiBTZW50IGZyb20gbXkgQW5kcm9pZCBkZXZpY2Ugd2l0aCBLLTkgTWFpbC4gUGxlYXNlIGV4Y3Vz
ZSBteSBicmV2aXR5Lg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpDYWtlIG1haWxpbmcgbGlzdCAtLSBjYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGNha2UtbGVhdmVAbGlzdHMuYnVmZmVyYmxv
YXQubmV0Cg==
