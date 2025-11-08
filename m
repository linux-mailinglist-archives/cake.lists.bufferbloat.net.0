Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F786C434B4
	for <lists+cake@lfdr.de>; Sat, 08 Nov 2025 21:54:37 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 4F4CC936974;
	Sat, 08 Nov 2025 21:54:20 +0100 (CET)
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1762635260;
 b=Qo9DoFEF0/0H5+oWVJG2fWvro7OSHjIwNYecsN7WGC/8UqPr8xfFIX5tZwCJcJiJcN7Xp
 f9+XEjNl5a+XpImI8gk0KbGpv3KvjjSSEX47Av2kYRpcf4aA9Cm1qGnIBw+rjfKCYPhlBbj
 79zH2kWRPniWcvINaU+U0HZWP/QvvmY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1762635260; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=bNQvxbYZFXkI1VsABWAZxlQxN4fVGkGHUNI+owYhlDQ=;
 b=7ocyQNaHiekYgW8DqIXLvLQoCC/vMT7X3bVnFrv2nsDfrPW4gE9g39Hzz5S5XwTWHibgv
 gUTw4sm+ENBcQUJXSngrAOvFl8NLXlPj62akczM4cC1Wv9O/a4jxMQir6iJ8B+xK3bVu2q4
 Wi/xQD1IJMHkWaLzf49rpIx1mbIEC+4=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=fail;
 arc=none;
 dmarc=fail header.from=uvic.ca policy.dmarc=none
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=; dkim=fail;
 arc=none (Message is not ARC signed);
 dmarc=fail (Used From Domain Record) header.from=uvic.ca policy.dmarc=none
Received: from mail-yx1-f41.google.com (mail-yx1-f41.google.com
 [74.125.224.41])
	by mail.toke.dk (Postfix) with ESMTPS id B37AE93563E
	for <codel@lists.bufferbloat.net>; Sat, 08 Nov 2025 18:03:51 +0100 (CET)
Received: by mail-yx1-f41.google.com with SMTP id
 956f58d0204a3-63fc72db706so1673574d50.2
        for <codel@lists.bufferbloat.net>;
 Sat, 08 Nov 2025 09:03:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762621430; x=1763226230;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=VYI95q0Hrmd8WBtJlfkYXFhHqiCBa2sb0AJMwVp7m/g=;
        b=HnbpRebyDpPBekWDRPJ0PIkkYmPHq5KX2LnExZYPEwQWj4pNZ8Y6pKMOpzEEiG3zVx
         Cn2eyiT79l660E724flBLrjZcdUufYtS22i0IXjgPQRqlzkzu/E1Fhurndk0A+HBcnw9
         XLGYpsYUTbCLI2q4LV8DhXhFe4xMK2WMOju35HVLlU/nRBD3F2v68/ilNunl4NT2jraY
         Thbh8GS2g8E5AqaydLPLI2pWQt6tHjf/15aGpa8BHbfbhcRGaOnnY28CE4DhWndHgrnq
         348pN9GjE50Ss6FpSVuoA0X1X+/ASID9HKj7V2SOjp8/5U20UutiYCntJ9vzsh9TFMvV
         RS1g==
X-Forwarded-Encrypted: i=1;
 AJvYcCVLTKm9+0QpxJ5uLawmPcjGdj6wCfYhJZHHlmGQaSQfondHtHaWryTuTt7eLH3e+tyKX06PZA==@lists.bufferbloat.net
X-Gm-Message-State: AOJu0Yzq7RTZ9tPa/YCQHbVemWNIx10TcL5knXJG2wiyidaNu+c8fAKG
	snbBnzhZRBwjFytCtfvEktUl6s1xUzBK4aTw8lO/SLJdUtuE4WzHL7jPe8ir9oDyoegwJgAjysQ
	5/VMhpxEVXgxYQB/8yO4Mx0Nu+nnENX0=
X-Gm-Gg: ASbGnctPhlNGJ9Vyh9dD73qAs1wFwTMDTVRgisIk+sruODvG8yHNo7HZk6tIWrR/UOk
	WFPbCLH0ck4wOGOJ7pgalRtF3Mfy56G9DpTs1cDt2E3X9ZMos9liP5iuS+jmN1CZM/NNeyunKas
	SFQgtnpJrrj9aYTlBZrEGlpYJ43WXSClsLQ+yw0lq3O97CJTcvuRy84F0MWSI+b3R4WtUskzRAe
	tCViHoVCXtGvqjWqrnms0D7KqoJqiB1vVrZDSxioF3BCNN8rg5aIvymYPPAumYjbSlsc/g=
X-Google-Smtp-Source: 
 AGHT+IGyLJDmaZx9cH7AmrBirhbXQofYl749utAHcfC37EnLQQ58js5SvfrbeaS8qbh0MM1YoBb5SXh6Oqp2uxT+gNc=
X-Received: by 2002:a05:690e:254d:b0:63f:9a42:f21 with SMTP id
 956f58d0204a3-640d4542752mr2045780d50.19.1762621430021; Sat, 08 Nov 2025
 09:03:50 -0800 (PST)
MIME-Version: 1.0
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
In-Reply-To: 
 <CAA_JP8Uh3L7BB=WqU8dkMGL2hhFTsdDCkqt-grPb04v7b9v8vQ@mail.gmail.com>
From: J Pan <Pan@uvic.ca>
Date: Sat, 8 Nov 2025 09:03:39 -0800
X-Gm-Features: AWmQ_bmJlclJ0Cdkaanmdq8SVfXgIt3CRCv6gxbR0ZyOgJ9UciBngC-uUxcdfIM
Message-ID: 
 <CAHn=e4gGtXLd5CUi-9M9KKxeaQqj6jMBKJppZKjm4SvMaPR6ug@mail.gmail.com>
To: dan <dandenson@gmail.com>
Cc: Jim Forster <jim@connectivitycap.com>,
 Frantisek Borsik <frantisek.borsik@gmail.com>,
	Cake List <cake@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>,
	codel@lists.bufferbloat.net, libreqos <libreqos@lists.bufferbloat.net>,
	l4s-discuss@ietf.org, starlink@lists.bufferbloat.net
X-MailFrom: panatuvicdotca@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation
Message-ID-Hash: HOWNLBZQZL4I7ZZECKMHEZLQ7GIZ2LNJ
X-Message-ID-Hash: HOWNLBZQZL4I7ZZECKMHEZLQ7GIZ2LNJ
X-Mailman-Approved-At: Sat, 08 Nov 2025 21:54:18 +0100
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [LibreQoS] Re: [Starlink] Re: Keynote: QoE/QoS - Bandwidth Is A
 Lie! at WISPAPALOOZA 2025 (October 16)
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/CAHn=e4gGtXLd5CUi-9M9KKxeaQqj6jMBKJppZKjm4SvMaPR6ug@mail.gmail.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

eWVzLCBhdmFpbGFiaWxpdHkgKGF0IGxlYXN0IHR3byBjb21wZXRpbmcgbmV0d29yayBwcm92aWRl
cnMgd2l0aA0KcmVsaWFibGUgc2VydmljZXMpLCBhZmZvcmRhYmlsaXR5IChzbyB0aGUgY29tcGV0
aXRpb24gdG8gYnJpbmcgdGhlDQpwcmljZSBhbmQgY29zdCBkb3duKSBhbmQgYXBwbGljYWJpbGl0
eSB0byBtb2Rlcm4gaW50ZXJuZXQgYXBwbGljYXRpb25zDQoodmlkZW8gc3RyZWFtaW5nLCBjb25m
ZXJlbmNpbmcgYW5kIGdhbWluZyBpbiBhZGRpdGlvbiB0byBlbWFpbCBhbmQgd2ViDQpicm93c2lu
Zykgc2hhbGwgYmUgdGhlIHVzZXItY2VudHJpYyBtZXRyaWNzIGluIGFkZGl0aW9uIHRvIHRocm91
Z2hwdXQsDQpsYXRlbmN5L2ppdHRlciwgcGFja2V0IGxvc3MsIGV0Yw0KLS0NCkogUGFuLCBVVmlj
IENTYywgRUNTNTY2LCAyNTAtNDcyLTU3OTYgKE5PIFZNKSwgUGFuQFVWaWMuQ0EsIFdlYi5VVmlj
LkNBL35wYW4NCg0KT24gU2F0LCBOb3YgOCwgMjAyNSBhdCA4OjAw4oCvQU0gZGFuIDxkYW5kZW5z
b25AZ21haWwuY29tPiB3cm90ZToNCj4NCj4gSSdtIHN0YXJ0aW5nIHRvIHNlZSB0aGUgc2lnbnMg
dGhhdCByYXcgYmFuZHdpZHRoIGlzIHN0YXJ0aW5nIHRvIGxvc2UNCj4gaXQncyBkb21pbmFuY2Ug
Zm9yIG1hcmtldGluZy4gIEl0J3Mgc3RpbGwgdGhlIGNsZWFyICMxIGFzayBidXQgcHJpY2UNCj4g
aXMgcmFwaWRseSBvdmVydGFraW5nIHNwZWVkIGZvciBvdXIgY3VzdG9tZXIgcmVxdWVzdHMuDQo+
DQo+IEkgYmVsaWV2ZSB3ZSd2ZSBoaXQgdGhpcyBlcmEncyB0aHJlc2hvbGQgb24gdGhyb3VnaHB1
dCBuZWVkcyBhbmQNCj4gcGVvcGxlIGhhdmUgc3RhcnRlZCB0byBub3RpY2UgdGhhdCAnbW9yZScg
ZG9lc24ndCBmZWVsIGxpa2UgYSBmYXN0ZXINCj4gc2VydmljZS4NCj4NCj4gb25lIGNvbW1vbiBz
Y2VuYXJpbyB0aGF0IHdlIGFyZSB1c2luZyB0byB3aW4gY3VzdG9tZXJzLCBpbiBjb21iaW5hdGlv
bg0KPiB3aXRoIGZhY2Vib29rIHRlc3RpbW9uaWFscywgaXMgdGhhdCBwZW9wbGUgaGF2ZSBiYWQg
ZXhwZXJpZW5jZXMgd2l0aA0KPiB3aWZpIGFuZCB0aGV5IG9yZGVyIGEgZmFzdGVyIHNlcnZpY2Ug
ZnJvbSBjYWJsZS9maWJlciBjb21wYW55IGFuZCB0aGUNCj4gd2lmaSBqdXN0IGdldHMgd29yc2Uu
ICBUaGlzIHNjZW5hcmlvIEkgdGhpbmsgaXMgaW5jcmVkaWJseSBjb21tb24gYW5kDQo+IHNlZW1z
IHRvIGJlIGEgY2F0YWx5c3QgZm9yICdzcGVlZCBpc24ndCBldmVyeXRoaW5nJy4gIFdlIGNvbWUg
aW4gd2l0aA0KPiA1MC01MDBNYnBzIG9mIHNlcnZpY2UgYW5kIHNvbGlkIHdob2xlLWhvbWUgd2lm
aSBhbmQgdGhleSBhcmUNCj4gY29udmVydGVkLg0KPg0KPiBJIGhvcGUgd2UncmUgbm90IHRvIGZh
ciBvZmYgZnJvbSBoYXZpbmcgJ3NwZWVkJyBiZSBqdXN0IGEgZmVhdHVyZSwgbm90DQo+IHRoZSBl
bnRpcmUgc3RvcnkuDQo+DQo+IGFuZCB5ZXMsIHdlIFFvRSBvciBzZXJ2aWNlIHdpdGggY2FrZSB2
aWEgbGlicmVxb3Mgd2hpY2ggaXMgdGhlDQo+IGRpZmZlcmVuY2UgYmV0d2VlbiBncmVhdCBzZXJ2
aWNlIGFuZCBpbmFkZXF1YXRlIHNlcnZpY2UgSU1PLg0KPg0KPiBPbiBGcmksIE5vdiA3LCAyMDI1
IGF0IDEyOjUw4oCvUE0gSiBQYW4gdmlhIExpYnJlUW9TDQo+IDxsaWJyZXFvc0BsaXN0cy5idWZm
ZXJibG9hdC5uZXQ+IHdyb3RlOg0KPiA+DQo+ID4gbWFya2V0aW5nIGlzIGV2ZW4gd29yc2UuIHNv
bWUgY2xhaW0gMjAwbWJwcyBiZWNhdXNlIDE1MG1icHMgZG93biBhbmQNCj4gPiA1MG1icHMgdXAg
YXQgcGVhayBkYXRhIHJhdGUuIG9mIGNvdXJzZSwgdGhpcyBpcyBub3QgdGhlIG9ubHkgcHJvYmxl
bQ0KPiA+IGluIHRlbGVjb20sIGJ1dCBsaWtlbHkgdGhlIHdvcnN0DQo+ID4NCj4gPiBuZXZlcnRo
ZWxlc3MsIHRoZXJlIGFyZSBzdGF0cyBzdWNoIGFzIDEwJSBpbmZsYXRpb24gZm9yIGZvb2QgYW5k
IDIwJQ0KPiA+IGZvciBnYXMsIHNvIGluIHRvdGFsIDMwJSA7LSkgYXQgdGhpcyByYXRlLCBhbnkg
bnVtYmVycyBjYW4gYmUgZmxvYXRpbmcNCj4gPiBhcm91bmQgYnV0IG5vbmUgYXJlIHRlbGxpbmcg
dGhlIHRydXRoIDstKQ0KPiA+IC0tDQo+ID4gSiBQYW4sIFVWaWMgQ1NjLCBFQ1M1NjYsIDI1MC00
NzItNTc5NiAoTk8gVk0pLCBQYW5AVVZpYy5DQSwgV2ViLlVWaWMuQ0EvfnBhbg0KPiA+DQo+ID4g
T24gRnJpLCBOb3YgNywgMjAyNSBhdCAxMDo1NeKAr0FNIEppbSBGb3JzdGVyIDxqaW1AY29ubmVj
dGl2aXR5Y2FwLmNvbT4gd3JvdGU6DQo+ID4gPg0KPiA+ID4gRXhhY3RseSBzby4NCj4gPiA+DQo+
ID4gPiBDb25zdW1lciBleHBlY3RhdGlvbnMgYW5kIHNlcnZpY2UgcHJvdmlkZXIgbWFya2V0aW5n
IG1heSBiZSBpbmZsdWVuY2VkIGJ5IG1lbW9yaWVzIG9mIGV4cGVyaWVuY2Ugd2hlbiB0cmFuc21p
c3Npb24gZGVsYXkgZGlkIG1hdHRlci4gIEF0IG9uZSB0aW1lIEkgd2FzIHZlcnkgaGFwcHkgd2l0
aCBteSBob21lIElTRE4gY29ubmVjdGlvbiwgYW5kIGV2ZW4gc2hhcmVkIGl0IHdpdGggbXkgbmVp
Z2hib3IuICBBdCBhYm91dCAxMjhrYnMsIGl0IHdhcyB0aHJlZSBvcmRlcnMgb2YgbWFnbml0dWRl
IHNsb3dlciB0aGFuIG15IGhvbWUgZmliZXIgbGluay4gIEnigJl2ZSBub3QgcnVuIHRoZSBudW1i
ZXJzIGJ1dCBJ4oCZbSBwcmV0dHkgc3VyZSB0cmFuc2ltaXNzaW9uIHNwZWVkIG1hdHRlcmVkIGZv
ciB2aWRlbywgZXZlbiBmb3IgY3J1bW15IHF1YWxpdHkgdmlkZW8sICBTbyB0aGVuIHdoZW4gSSBs
ZWFybmVkIGEgYml0IGFib3V0IGRpZ2l0YWwgdmlkZW8sIGFuZCBjYWJsZeKAmXMgNjQgUUFNIDI3
bWJwcyBjaGFubmVscywgSSBnb3QgZXhjaXRlZCBhbmQgdGhvdWdodCwg4oCcd293LCB0aGV5IGNv
dWxkIGRlbGl2ZXIgMW1icHMgc2VydmljZSEgIEFuZCB3b3VsZG7igJl0IGl0IGJlIGNvb2wgdG8g
aGF2ZSAxTSBob21lIG9ubGluZSBhdCAxMHggdGhlIHNwZWVkIG9mIElTRE4/4oCdLiAgSXQgd2Fz
IGNvb2whICBBbmQgdHdvIG1vcmUgb3JkZXJzIG9mIG1hZ25pdHVkZSBsYXRlciwgaGVyZSB3ZSBh
cmUuDQo+ID4gPg0KPiA+ID4gICDigJQgSmltDQo+ID4gPg0KPiA+ID4gT24gTm92IDcsIDIwMjUs
IGF0IDEyOjUy4oCvUE0sIEogUGFuIDxQYW5AdXZpYy5jYT4gd3JvdGU6DQo+ID4gPg0KPiA+ID4g
bGF0ZW5jeSBpcyBiYXNlZCBvbiByb3VuZC10cmlwIHRpbWUsIGFuZCBvbmUtd2F5IGRlbGF5IGlu
Y2x1ZGVzDQo+ID4gPiB0cmFuc21pc3Npb24gZGVsYXksIHByb3BhZ2F0aW9uIGRlbGF5LCBxdWV1
aW5nIGRlbGF5IGFuZCBwcm9jZXNzaW5nDQo+ID4gPiBkZWxheS4gYmFuZHdpZHRoIGRvZXMgYWZm
ZWN0IHRyYW5zbWlzc2lvbiBkZWxheSAob3Igc2VyaWFsaXphdGlvbg0KPiA+ID4gZGVsYXkpLCBw
cm9wYWdhdGlvbiBkZWxheSBpcyBkZXRlcm1pbmVkIGJ5IHRoZSBsaW5rIGxlbmd0aCBhbmQgdGhl
DQo+ID4gPiAidHJhdmVsIiBzcGVlZCBvZiB0aGUgc2lnbmFsLCBxdWV1aW5nIGRlbGF5IGlzIHRo
ZSBoYXJkZXN0IHBhcnQgYW5kDQo+ID4gPiBhZmZlY3RlZCBieSB0aGUgYnVmZmVyIGJsb2F0IGEg
bG90LCBhbmQgcHJvY2Vzc2luZyBkZWxheSBpcyBhbm90aGVyDQo+ID4gPiB2YXJpYWJsZS4gb2Yg
Y291cnNlLCB0cmFuc21pc3Npb24gZGVsYXkgdGFrZXMgbGVzcyBhbmQgbGVzcyBwb3J0aW9uIG9m
DQo+ID4gPiB0aGUgZW5kLXRvLWVuZCBkZWxheSBub3cgZHVlIHRvIGhpZ2hlciBhbmQgaGlnaGVy
ICJzcGVlZCIgbGlua3MNCj4gPiA+DQo+ID4gPiBjb25zdW1lcnMgbWF5IG1pc3Rha2VuIHRoZSBz
cGVlZCBvZiB0aGUgbGluayAodGhlICJ3aWR0aCIgb2YgdGhlaXINCj4gPiA+IHBpcGUpIGFzIGhv
dyBmYXN0IHRoZWlyIGludGVybmV0IGlzICh0aGUgImxlbmd0aCIgb2YgdGhlIHBpcGUpLCBkdWUg
dG8NCj4gPiA+IHRoZSBwb29yIHRlcm1pbm9sb2d5IHdlIGhhdmUgYmVlbiB1c2luZyA7LSkNCj4g
PiA+DQo+ID4gPg0KPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fDQo+ID4gTGlicmVRb1MgbWFpbGluZyBsaXN0IC0tIGxpYnJlcW9zQGxpc3RzLmJ1ZmZl
cmJsb2F0Lm5ldA0KPiA+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGlicmVxb3Mt
bGVhdmVAbGlzdHMuYnVmZmVyYmxvYXQubmV0DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdCAtLSBjYWtlQGxpc3RzLmJ1ZmZl
cmJsb2F0Lm5ldApUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGNha2UtbGVhdmVAbGlz
dHMuYnVmZmVyYmxvYXQubmV0Cg==
