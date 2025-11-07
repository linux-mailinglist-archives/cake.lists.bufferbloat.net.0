Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 89A34C3F93E
	for <lists+cake@lfdr.de>; Fri, 07 Nov 2025 11:50:22 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 994C292CF18;
	Fri, 07 Nov 2025 11:50:21 +0100 (CET)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=POPnmalb
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1762512621;
 b=Cz+t/nzcVtNR8OfQdYDnnKlr6IJykzDcsJthIysZolJDJp0eDRYpZOg+ZsQcNz8Tha3qo
 iKPPxX+KEVJnJ0pN4m0xukhJVrHbnnaRJBrOrhSHC3JHve02icL9vDzV/e3sC66plIzT1nH
 jZOInnbxz1BCGR1t+xm6ErRd4k6VyMs=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1762512621; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=anA4SUoemRuunj85n5jWcv0ObwAdd5799cE69OAQ9Gg=;
 b=yNv0bPG1AHJrsyKQ2YJ3JMvV/BwyR6t7HCwETjhqG9CAnonmvvqKa6/KWNp3OZDD2t6IY
 ubNofYk2fDnGbrmy7dK0tl//ck+sK0ign7MfhPnx/HZJsZxihYO+jkFJvNOSsd1Y5RWZSpC
 ZgZRM7SVXN9cbnpmn4oOx7cVFPv4Qkk=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com;
 arc=none;
 dmarc=pass header.from=gmail.com policy.dmarc=quarantine
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com; arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=gmail.com
 policy.dmarc=quarantine
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com
 [IPv6:2a00:1450:4864:20::52e])
	by mail.toke.dk (Postfix) with ESMTPS id 4526892CEFA
	for <cake@lists.bufferbloat.net>; Fri, 07 Nov 2025 11:50:19 +0100 (CET)
Received: by mail-ed1-x52e.google.com with SMTP id
 4fb4d7f45d1cf-640a0812658so1015981a12.0
        for <cake@lists.bufferbloat.net>;
 Fri, 07 Nov 2025 02:50:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762512618; x=1763117418;
 darn=lists.bufferbloat.net;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jJI3R3mKaURzf2joQRQ5kTgBiq0EFIIsJ/6pB7tSSmw=;
        b=POPnmalbCZtjbA00TxhBbh9sB2JKwKeMHiZZyIl+dmuSkDpmwl1s3ALqlG6CzI0jTJ
         h3iJRmKJ16EAuWyRLui+tThH8fm9776sfuiKH3i40MV8jOqka09+1x8AaFup3ivWqigj
         +KR4SVTgBTAPXpAA5UtQeHynuGVKFhBYl4WvXpOw579QoaCAVK4OD0kKHtJVD1xCbtj8
         pPgbMXamXNBF4ZFpklkQTM9m3X24W6rzx8V5lcmH1qcNfqd1HSKc9uFep+JyUDIViRVh
         vukkdWiqUT2PLFIyXE0Y9c99hnnAWCwz/sNOMtoFtVN+9rRbrYqJQCcnny1lClXT8Sqs
         2OCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762512618; x=1763117418;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jJI3R3mKaURzf2joQRQ5kTgBiq0EFIIsJ/6pB7tSSmw=;
        b=jVc/+DerzHIyejm9O140cl6TMhVm9TfZHChZM31WhPfrb2OrAPk37Lt6pwoTDigYiM
         DCVxtsJGLdZKKm/yPEyS93ZIA8XPjfJUw/xFqLbm/DDZVKiv7DgPIKseQW4YO4XghS2b
         xXAld5MIYwnKUf3/ECYxSegmVWGHtjrIE5F06MreZ6nGmg+xxJtZS45DXeSVYkovPIhf
         VQR6kSoSXo4CPQKVr8+b6WjyRLRtWqPX69ZOHU2xrAB9qCpeXmc8UcgytnFbbynQgLS+
         OonQ40fba+a3dcTLB97TG9cjVFUfIC66hYWj3L11l7RM/af8oA5Mo9ddBNdtdHNpLqIn
         q1Mg==
X-Gm-Message-State: AOJu0YzUsidyNuMbZuOCLMmbfcAjivjU/32Amct7uaMVWagJDt+Vj7FE
	eh88WZjwuJHqrWMKuWDGebp39sy8PYijNs53EUsBSd59LeQQSmpSAZrOTDEjZITqkezNWlXN0Mr
	kF11caZIjoo2ZnHveCEodHjHlOxS1cf4DoPnuFv8n/g==
X-Gm-Gg: ASbGncvlk+6MLDSk98Y5yAnejUpWoJ+74nfcRQLDL0aVzSYwe9ZRKdjmxgklrvQOC9g
	ERP9XVRitJxFcmqID0/d4ZBOWMt/fgWpAck2JPWYIR++WZsNiO5NGRTVZHolxSfBhGrpin24k8t
	ypGb5cr/GjTA4oSo6YvzH4AFv7BCAwmNqtMdbe0tGEz3NoOKcrqzF2lw4CAdoRmYr+y5zhsPZDz
	IhuA04t+wgqaARogpYqtHhoYjMCnxP8sB4Tf6R8RR+2+iIUizhrrPoBiw9uDQ==
X-Google-Smtp-Source: 
 AGHT+IFDIHsByIEOMcTnic+KyNQO1P5uBxWzlga2lRNpbw5nn0AWjZoXOjZLEjdETzKzLMLRDlnKXG+1au6/hPliSOg=
X-Received: by 2002:a17:907:6d0b:b0:b6d:9576:3890 with SMTP id
 a640c23a62f3a-b72c0d02de6mr299804366b.45.1762512617999; Fri, 07 Nov 2025
 02:50:17 -0800 (PST)
MIME-Version: 1.0
References: <9390D9DA-3C77-429F-A41D-E0FECD52FF06@connectivitycap.com>
 <CAJUtOOjt+DajPifDNLNBOT_xwNWL_Wec5Gf_O91HMDdwpxtmeg@mail.gmail.com>
 <CAA_JP8XOeSOqbZJPH=1_oWMD055vOUxHipxJMs8sbsHLu5MHCA@mail.gmail.com>
 <CAJUtOOhiu8CVLARsiMKUkN4s87_VUr17su1Nr_4aManrwkCQAg@mail.gmail.com>
In-Reply-To: 
 <CAJUtOOhiu8CVLARsiMKUkN4s87_VUr17su1Nr_4aManrwkCQAg@mail.gmail.com>
From: Frantisek Borsik <frantisek.borsik@gmail.com>
Date: Fri, 7 Nov 2025 11:53:44 +0100
X-Gm-Features: AWmQ_bnrHXrTUM1U9wQx4qNOyYxHay2B6BDHd7db4ZByXFVZWxXKcLZ84ec1bCY
Message-ID: 
 <CAJUtOOhzJAymDiKsnRPho80B8GZ4wzd8W7FWccS=uhiQPd3KOg@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>,
	codel@lists.bufferbloat.net,
	Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>,
 libreqos <libreqos@lists.bufferbloat.net>,
	Dave Taht via Starlink <starlink@lists.bufferbloat.net>, l4s-discuss@ietf.org
Message-ID-Hash: IYPQMAW6RB4RAY72DTSMAFGLYLXZ3W5O
X-Message-ID-Hash: IYPQMAW6RB4RAY72DTSMAFGLYLXZ3W5O
X-MailFrom: frantisek.borsik@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Content-Filtered-By: Mailman/MimeDel 3.3.10
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [LibreQoS] Re: [Starlink] Keynote: QoE/QoS - Bandwidth Is A Lie! at
 WISPAPALOOZA 2025 (October 16)
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/CAJUtOOhzJAymDiKsnRPho80B8GZ4wzd8W7FWccS=uhiQPd3KOg@mail.gmail.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gdG8gYWxsLA0KDQpSZWNvcmRpbmcgb2Ygb3VyIFFvRS9Rb1MgcGFuZWwgZGlzY3Vzc2lv
biBpcyBvdXQhIEl0IHdhcyByZWFsbHkgZ3JlYXQgYW5kDQpiZWxpZXZlIHlvdSB3aWxsIGxpa2Ug
aXQ6DQoNCmh0dHBzOi8vd3d3LnlvdXR1YmUuY29tL3dhdGNoP3Y9VDFWRVQwVllRNmMNCg0KV2Ug
aGF2ZSB0b3VjaCBiYW5kd2lkdGgsIEw0UywgU3RhcmxpbmsgYW5kIG1vcmUuDQoNCkhlcmUgYXJl
IHRoZSBzbGlkZXMgd2l0aCBhZGRpdGlvbmFsIHJlYWRpbmc6DQpodHRwczovL2RvY3MuZ29vZ2xl
LmNvbS9wcmVzZW50YXRpb24vZC8xTUwwSTNBdjNEQ3RRRGlQOERqcl9ZR0gycjQtVURaUDI1VkVr
LXh5SmNaRS9lZGl0P3NsaWRlPWlkLnAjc2xpZGU9aWQucA0KDQpXZSBob3BlIHRvIGNvbnRpbnVl
IHRoaXMgY29udmVyc2F0aW9uIGludG8gbW9yZSBwcmFjdGljYWwsIGRlbW8tbGlrZQ0KZW52aXJv
bm1lbnQgb2Ygc29ydCwgdGhhdCB3ZSBjYW4gc2VlIGF0IElFVEYgSGFja2F0aG9uIGFuZCB1c2Vk
IHRvIHNlZSBpbg0KdGhlIGVhcmx5IFdJU1BBIGV2ZW50IGRheXMsIHdpdGggQW5pbWFsIEZhcm0u
DQoNCg0KQWxsIHRoZSBiZXN0LA0KDQpGcmFuaw0KDQpGcmFudGlzZWsgKEZyYW5rKSBCb3JzaWsN
Cg0KDQoqSW4gbG92aW5nIG1lbW9yeSBvZiBEYXZlIFTDpGh0OiAqMTk2NS0yMDI1DQoNCmh0dHBz
Oi8vbGlicmVxb3MuaW8vMjAyNS8wNC8wMS9pbi1sb3ZpbmctbWVtb3J5LW9mLWRhdmUvDQoNCg0K
aHR0cHM6Ly93d3cubGlua2VkaW4uY29tL2luL2ZyYW50aXNla2JvcnNpaw0KDQpTaWduYWwsIFRl
bGVncmFtLCBXaGF0c0FwcDogKzQyMTkxOTQxNjcxNA0KDQppTWVzc2FnZSwgbW9iaWxlOiArNDIw
Nzc1MjMwODg1DQoNClNreXBlOiBjYXNpb2E1MzAyY2ENCg0KZnJhbnRpc2VrLmJvcnNpa0BnbWFp
bC5jb20NCg0KDQpPbiBXZWQsIE9jdCAxLCAyMDI1IGF0IDExOjMy4oCvUE0gRnJhbnRpc2VrIEJv
cnNpayA8ZnJhbnRpc2VrLmJvcnNpa0BnbWFpbC5jb20+DQp3cm90ZToNCg0KPiBMZXQncyBzYXkg
dGhhdCBJIGxvdmUgaXQsIGNoYW5uZWxpbmcgbXkgaW5uZXIgRGF2ZSBUYWh0LiBCdXQgdGhlcmUg
d2VyZSBhDQo+IGNvdXBsZSBvZiB2b2ljZXMgYXNraW5nIGlmIEkgd29uJ3QgY29uc2lkZXIgdG8g
Y2hhbmdlIGl0IGEgYml0LCB0byBiZSAibGVzcw0KPiBob3N0aWxlIiB0byBvdXIgImJhbmR3aWR0
aCBpcyBraW5nISIgZnJpZW5kcy4uLmFuZCBJIHdhcyB0cnlpbmcsIGJ1dCB0aGlzDQo+IHdhcyBy
ZWFsbHkgc3RpY2t5IGFuZCBJJ20gaGFwcHkgdGhhdCBpdCBzdGF5ZWQgdGhpcyB3YXkuDQo+DQo+
DQo+IEFsbCB0aGUgYmVzdCwNCj4NCj4gRnJhbmsNCj4NCj4gRnJhbnRpc2VrIChGcmFuaykgQm9y
c2lrDQo+DQo+DQo+ICpJbiBsb3ZpbmcgbWVtb3J5IG9mIERhdmUgVMOkaHQ6ICoxOTY1LTIwMjUN
Cj4NCj4gaHR0cHM6Ly9saWJyZXFvcy5pby8yMDI1LzA0LzAxL2luLWxvdmluZy1tZW1vcnktb2Yt
ZGF2ZS8NCj4NCj4NCj4gaHR0cHM6Ly93d3cubGlua2VkaW4uY29tL2luL2ZyYW50aXNla2JvcnNp
aw0KPg0KPiBTaWduYWwsIFRlbGVncmFtLCBXaGF0c0FwcDogKzQyMTkxOTQxNjcxNA0KPg0KPiBp
TWVzc2FnZSwgbW9iaWxlOiArNDIwNzc1MjMwODg1DQo+DQo+IFNreXBlOiBjYXNpb2E1MzAyY2EN
Cj4NCj4gZnJhbnRpc2VrLmJvcnNpa0BnbWFpbC5jb20NCj4NCj4NCj4gT24gV2VkLCBPY3QgMSwg
MjAyNSBhdCA5OjI14oCvUE0gZGFuIDxkYW5kZW5zb25AZ21haWwuY29tPiB3cm90ZToNCj4NCj4+
IEkgYWN0dWFsbHkgcmVhbGx5IGxpa2UgdGhlIHRpdGxlIDspDQo+Pg0KPj4gSXQncyB0aGF0IG1v
c3Qgb2YgdGhlIHRpbWUgcGVvcGxlIGFyZSB0b2xkIHRoZXkgbmVlZCBtb3JlIGJhbmR3aWR0aCB0
bw0KPj4gc29sdmUgYSBwcm9ibGVtLCB3aGVuIHRoZXkgcmVhbGx5IG5lZWQgbG93ZXIgbGF0ZW5j
eSBhbmQgaml0dGVyLiAgU28gdGhlDQo+PiB2YXN0IG1ham9yaXR5IG9mIHRoZSB0aW1lICdtb3Jl
IGJhbmR3aWR0aCcgYXMgYSBzb2x1dGlvbiByZWFsbHkgaXMgYSBsaWUuDQo+Pg0KPj4gT24gVHVl
LCBTZXAgMzAsIDIwMjUgYXQgMjo0N+KAr1BNIEZyYW50aXNlayBCb3JzaWsgdmlhIExpYnJlUW9T
IDwNCj4+IGxpYnJlcW9zQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldD4gd3JvdGU6DQo+Pg0KPj4+IFRo
YW5rcywgSmltLiBXZWxsLCB0cnVlIHRoYXQgLSBidXQgSSB3YW50ZWQgdG8gZG8gaXQgZWl0aGVy
IHdheSwgYmVjYXVzZQ0KPj4+IG9mDQo+Pj4gb3VyIGRlYXIgRGF2ZSBhbmQgLSBhcyBhIGNvbnZl
cnNhdGlvbiBzdGFydGVyLg0KPj4+IEFzIEBKYXNvbiBMaXZpbmdvb2QgPGphc29uX2xpdmluZ29v
ZEBjb21jYXN0LmNvbT4gc2FpZCAtICJCYW5kd2lkdGggaXMNCj4+PiBkZWFkLiBMb25nIGxpdmUg
bGF0ZW5jeS4iDQo+Pj4NCj4+PiBodHRwczovL3B1bHNlLmludGVybmV0c29jaWV0eS5vcmcvYmxv
Zy9iYW5kd2lkdGgtaXMtZGVhZC1sb25nLWxpdmUtbGF0ZW5jeQ0KPj4+DQo+Pj4gSSB3aWxsIGRv
IG15IGJlc3QgdG8gZ2V0IHRoZSBhdWRpby92aWRlbyByaWdodCBhbmQgdG8gc2hhcmUgaXQgd2l0
aCB5b3UNCj4+PiBhbGwuDQo+Pj4NCj4+PiBQUzogU2VuZGluZyB5b3Ugc2VwYXJhdGUgZW1haWwu
DQo+Pj4NCj4+PiBBbGwgdGhlIGJlc3QsDQo+Pj4NCj4+PiBGcmFuaw0KPj4+DQo+Pj4gRnJhbnRp
c2VrIChGcmFuaykgQm9yc2lrDQo+Pj4NCj4+Pg0KPj4+ICpJbiBsb3ZpbmcgbWVtb3J5IG9mIERh
dmUgVMOkaHQ6ICoxOTY1LTIwMjUNCj4+Pg0KPj4+IGh0dHBzOi8vbGlicmVxb3MuaW8vMjAyNS8w
NC8wMS9pbi1sb3ZpbmctbWVtb3J5LW9mLWRhdmUvDQo+Pj4NCj4+Pg0KPj4+IGh0dHBzOi8vd3d3
LmxpbmtlZGluLmNvbS9pbi9mcmFudGlzZWtib3JzaWsNCj4+Pg0KPj4+IFNpZ25hbCwgVGVsZWdy
YW0sIFdoYXRzQXBwOiArNDIxOTE5NDE2NzE0DQo+Pj4NCj4+PiBpTWVzc2FnZSwgbW9iaWxlOiAr
NDIwNzc1MjMwODg1DQo+Pj4NCj4+PiBTa3lwZTogY2FzaW9hNTMwMmNhDQo+Pj4NCj4+PiBmcmFu
dGlzZWsuYm9yc2lrQGdtYWlsLmNvbQ0KPj4+DQo+Pj4NCj4+PiBPbiBUdWUsIFNlcCAzMCwgMjAy
NSBhdCAxMDoyNeKAr1BNIEphbWVzIEZvcnN0ZXIgPGppbUBjb25uZWN0aXZpdHljYXAuY29tPg0K
Pj4+IHdyb3RlOg0KPj4+DQo+Pj4gPiBXb3csIHRoYXTigJlzIGZhbnRhc3RpYywgRnJhbnRpc2Vr
ISAgR3JlYXQgd29yayBtYWtpbmcgdGhpcyBoYXBwZW4uDQo+Pj4gPg0KPj4+ID4gVGhlc2Ugc29y
dCBvZiB0aXRsZXMgYXJlbuKAmXQgbXkgZmF2b3JpdGUuIEkgdGhpbmsgSSB1bmRlcnN0YW5kIHRo
ZQ0KPj4+ID4gc2VudGltZW50IGJ1dCBmaW5kIHRoZSBpc3N1ZXMgbW9yZSBudWFuY2VkIHRoYW4g
dGhhdC4gOi0pDQo+Pj4gPg0KPj4+ID4gSWYgeW91IGNhbiBnZXQgY2xlYXIgYXVkaW8sIG5vdCBt
dWNoIHF1YWxpdHkgaXMgbmVlZGVkIGZvciBwYW5lbHMgYW5kDQo+Pj4gPiB0YWxraW5nIGJlYWRz
LiAgIEJlc3Qgd291bGQgYmUgYSBmZWVkIHJpZ2h0IGludG8gYW4gaVBob25lL2FuZHJvaWQuDQo+
Pj4gPg0KPj4+ID4gSmltDQo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18NCj4+PiBMaWJyZVFvUyBtYWlsaW5nIGxpc3QgLS0gbGlicmVxb3NAbGlzdHMu
YnVmZmVyYmxvYXQubmV0DQo+Pj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaWJy
ZXFvcy1sZWF2ZUBsaXN0cy5idWZmZXJibG9hdC5uZXQNCj4+Pg0KPj4NCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0IC0tIGNh
a2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8g
Y2FrZS1sZWF2ZUBsaXN0cy5idWZmZXJibG9hdC5uZXQK
