Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 209FCCFECE3
	for <lists+cake@lfdr.de>; Wed, 07 Jan 2026 17:16:05 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 5DDA4B7E4AD;
	Wed, 07 Jan 2026 17:16:04 +0100 (CET)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=cycaDonI
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1767802564;
 b=zqCz+NKeygSV6u9x5eJszgYbB+FWwegRZ++2Wtp24STYSm/xIZPbh64jl7BT8ho5Frd3S
 Qd35ml9pNgwR9tvPDZqk6WNNr3LqidpwmRN3gCrAwodzkxH0UgpWvrAn0T/OcWOvsq9pLtm
 BPSG5YMO1N1IMQ5QO4bfgc7osC/Q/S8=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1767802564; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=UVYEFRL7tCKHTsYobcErA43w6dNn643+/G+91Bq4Z3E=;
 b=ltXa5zLV1fMaI8FB35dgRH6CvIMI93alk4kRcNgsHE2Bnw6/pg8RIYDxe3jiY2pI3RFJT
 MCdvTbi40Mf4YbzlRDZQ3WjR8IE3LEWmUtWXn3o3hQXBhE+djYNCRj3rvQpf34fgSwIguL/
 TE9Voo+O24RtUO2rU88m3AIDGRK/mM4=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com;
 arc=none;
 dmarc=pass header.from=gmail.com policy.dmarc=quarantine
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com; arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=gmail.com
 policy.dmarc=quarantine
Received: from mail-yx1-xb12d.google.com (mail-yx1-xb12d.google.com
 [IPv6:2607:f8b0:4864:20::b12d])
	by mail.toke.dk (Postfix) with ESMTPS id 552CEB7DCCF
	for <cake@lists.bufferbloat.net>; Wed, 07 Jan 2026 15:42:30 +0100 (CET)
Received: by mail-yx1-xb12d.google.com with SMTP id
 956f58d0204a3-6420c0cf4abso1922204d50.1
        for <cake@lists.bufferbloat.net>;
 Wed, 07 Jan 2026 06:42:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767796949; x=1768401749;
 darn=lists.bufferbloat.net;
        h=content-transfer-encoding:mime-version:subject:references
         :in-reply-to:message-id:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZpmSZto6HCh21XHSuuIbEddw2MefFg0sEaIgISNXX6I=;
        b=cycaDonINZhNX/xpoSUh4WE2tFoXCjoqdrbM8Uqs52gURo2ts+M6mGyslVlv1mu6AH
         CmusQDib5/pY6OtK+u1NCZgSLcKF8naj5+NgmRELe1p4UFVPh0aS8yi4rwgvfBzR3W/j
         oFfb49v1tfWIFfkvcdjDEHCP4/VaNb6QdLfRFBwba1/XhfHeRhrxdzHY64rYJsra6OnL
         QDc+ewsYEGfxzOpQz9NRjrAE8J4+LDuupXGiZpW90hlEglpiGNWjWZwNNMkVXXFPt2/3
         8ZseZw3r53JG6gbHfV7SJcVqKZMBRfXgJMOBq+30mUghfXOe5ZoDAN2Y3aAykt9pV3th
         OKbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767796949; x=1768401749;
        h=content-transfer-encoding:mime-version:subject:references
         :in-reply-to:message-id:cc:to:from:date:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZpmSZto6HCh21XHSuuIbEddw2MefFg0sEaIgISNXX6I=;
        b=RNt80C2yF+FV0jswb4sAjwMxt0+CJV1KE0e3/dDP41CocTjngijaujuQaBqyln76u8
         SOqkz54EJgv3uYSi3vyofC5NZLouszRdWn4/zR5PWnDJ+SXAxgJw010GTVWii0t8NYa2
         I+rveMBMRapKs5D+rE1UUCL6ZCN7nKRSTA+k9ODbrTUKQIbTcBJM1rjSKCh3Ba3tu5ap
         2fkDBr0M64bdHf41VrmsjNhfLJD8Ow05JYfwhn7LAakLxBh3v3d+hooDIty2qQVqEokx
         C8kVxsv1Ds9Fm76yKpaFoGfmd5rOnyD5e2fbtO1OGHDJPbqRGnVFl1rTd0RXbcnpqmT/
         2xuw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXCrNs/TtJIlsA+Ga2NZQjqUM5WFsbRcYZ+CmVJfSe/bmt+QSvjJcExbcElvvk2ZxAYWmY5@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YwrPNEr8nyOfYMdVQAvzSBlXpFev971MjOqi35YiInANXVPc6+7
	WdCcqM7uJm9YkncQoI4Cu5N2pV1yl8FnCJVYFlwmHf2KgzzIadPllQE3
X-Gm-Gg: AY/fxX5RTJ5FP1A2gE0VUtsa0aqjL1+ZYbqv9Gn5/+m3xiliK5zssPMczqhG2d5iPH5
	6tIH0etZlq/u9x+JTrdBd1bPys0C1dIDWLevbpKJ1cOxEaOJ5bf9DuG3ZFtg0QPlNQ6hzWs4pFF
	f9fJU2ko8ippq9xUzzn2CGPxnOVfJU4/O5erkmk1CseN+E3QGPy5bHX97WjeIXw+sK7wPRZHXT1
	nCr7y7/ht067XeTPEpQSFt5iOUYTK1x/gFxNMoCnE4qHRmo4QPtwjaWP6ENFNpXkAe/7CJkgahz
	yBK/g+YP8KKvB4mRgkfxuJqZ5d6ZMxXpW011A8vvHU2UgIx49x9hxiZWhq+ElzmINIBbhibf0DK
	Xpzo8AAG/IVuKlOaJmDlV2RLS1C0dEuYqW/tCabyRMroqKbMGHJszR611qYQMZeeiIMY7ZI9Qc/
	E6FUctP8iiX5VmSOhljYZHOcuoq0J5AbQAudyB4LoMP4l4b4t4W1ceAbbRb4po1BzHPDMAYw==
X-Google-Smtp-Source: 
 AGHT+IHOYqgqIsQV5OCyt+nt3hkI5FRq5tt1UpWArNiIQBGiK3OY9OjfrS8IcPSJ2z64PfeXzfAkwA==
X-Received: by 2002:a53:d056:0:20b0:63f:9897:f544 with SMTP id
 956f58d0204a3-64716b3a7eamr2055666d50.19.1767796949169;
        Wed, 07 Jan 2026 06:42:29 -0800 (PST)
Received: from gmail.com (250.4.48.34.bc.googleusercontent.com. [34.48.4.250])
        by smtp.gmail.com with UTF8SMTPSA id
 956f58d0204a3-6470d80dab9sm2133603d50.7.2026.01.07.06.42.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 06:42:28 -0800 (PST)
Date: Wed, 07 Jan 2026 09:42:28 -0500
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@toke.dk>,
 Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
 Jamal Hadi Salim <jhs@mojatatu.com>,
 Cong Wang <xiyou.wangcong@gmail.com>,
 Jiri Pirko <jiri@resnulli.us>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>
Cc: =?UTF-8?B?Sm9uYXMgS8O2cHBlbGVy?= <j.koeppeler@tu-berlin.de>,
 cake@lists.bufferbloat.net,
 netdev@vger.kernel.org
Message-ID: <willemdebruijn.kernel.c89a9fd4ffe8@gmail.com>
In-Reply-To: <87jyxt4w9k.fsf@toke.dk>
References: <20260106-mq-cake-sub-qdisc-v6-0-ee2e06b1eb1a@redhat.com>
 <20260106-mq-cake-sub-qdisc-v6-2-ee2e06b1eb1a@redhat.com>
 <willemdebruijn.kernel.21e0da676fe64@gmail.com>
 <87jyxt4w9k.fsf@toke.dk>
Mime-Version: 1.0
X-MailFrom: willemdebruijn.kernel@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation
Message-ID-Hash: 77SQW6T4QZZ5NSTCUCHNDPBUPJFAGPNE
X-Message-ID-Hash: 77SQW6T4QZZ5NSTCUCHNDPBUPJFAGPNE
X-Mailman-Approved-At: Wed, 07 Jan 2026 17:16:02 +0100
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH net-next v6 2/6] net/sched: sch_cake: Factor out config
 variables into separate struct
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/willemdebruijn.kernel.c89a9fd4ffe8@gmail.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIHdyb3RlOg0KPiBXaWxsZW0gZGUgQnJ1aWpuIDx3aWxs
ZW1kZWJydWlqbi5rZXJuZWxAZ21haWwuY29tPiB3cml0ZXM6DQo+IA0KPiA+PiAgc3RhdGljIGlu
dCBjYWtlX2luaXQoc3RydWN0IFFkaXNjICpzY2gsIHN0cnVjdCBubGF0dHIgKm9wdCwNCj4gPj4g
IAkJICAgICBzdHJ1Y3QgbmV0bGlua19leHRfYWNrICpleHRhY2spDQo+ID4+ICB7DQo+ID4+IC0J
c3RydWN0IGNha2Vfc2NoZWRfZGF0YSAqcSA9IHFkaXNjX3ByaXYoc2NoKTsNCj4gPj4gKwlzdHJ1
Y3QgY2FrZV9zY2hlZF9kYXRhICpxZCA9IHFkaXNjX3ByaXYoc2NoKTsNCj4gPj4gKwlzdHJ1Y3Qg
Y2FrZV9zY2hlZF9jb25maWcgKnE7DQo+ID4+ICAJaW50IGksIGosIGVycjsNCj4gPj4gIA0KPiA+
PiArCXEgPSBrdmNhbGxvYygxLCBzaXplb2Yoc3RydWN0IGNha2Vfc2NoZWRfY29uZmlnKSwgR0ZQ
X0tFUk5FTCk7DQo+ID4+ICsJaWYgKCFxKQ0KPiA+PiArCQlyZXR1cm4gLUVOT01FTTsNCj4gPj4g
Kw0KPiA+DQo+ID4gQ2FuIHRoaXMganVzdCBiZSBhIHJlZ3VsYXIga3phbGxvYz8NCj4gDQo+IFll
YWgsIEkgZ3Vlc3Mgc28uIEknbGwgY2hhbmdlIHRoaXMgaWYgdGhlcmUncyBhIG5lZWQgdG8gcmVz
cGluIGZvciBvdGhlcg0KPiByZWFzb25zLCBidXQgcHJvYmFibHkgbm90IHdvcnRoIHJlc3Bpbm5p
bmcgZm9yIHRoaXMgb24gaXRzIG93bj8gU2VlaW5nDQo+IGFzIGl0J2xsIGFsbCBlbmQgdXAgaW4g
dGhlIHNhbWUga21hbGxvYyBjYWxsIGFueXdheSA6KQ0KDQpTb3VuZHMgZ29vZC4NCg0KPiANCj4g
PiBNb3JlIGltcG9ydGFudGx5LCB3aGVyZSBpcyBxIGFzc2lnbmVkIHRvIHFkLT5jb25maWcgYWZ0
ZXIgaW5pdD8NCj4gDQo+IEp1c3QgYmVsb3c6DQo+IA0KPiA+PiAgCXNjaC0+bGltaXQgPSAxMDI0
MDsNCj4gPj4gIAlzY2gtPmZsYWdzIHw9IFRDUV9GX0RFUVVFVUVfRFJPUFM7DQo+ID4+ICANCj4g
Pj4gQEAgLTI3NDIsMzMgKzI3NTUsMzYgQEAgc3RhdGljIGludCBjYWtlX2luaXQoc3RydWN0IFFk
aXNjICpzY2gsIHN0cnVjdCBubGF0dHIgKm9wdCwNCj4gPj4gIAkJCSAgICAgICAqIGZvciA1IHRv
IDEwJSBvZiBpbnRlcnZhbA0KPiA+PiAgCQkJICAgICAgICovDQo+ID4+ICAJcS0+cmF0ZV9mbGFn
cyB8PSBDQUtFX0ZMQUdfU1BMSVRfR1NPOw0KPiA+PiAtCXEtPmN1cl90aW4gPSAwOw0KPiA+PiAt
CXEtPmN1cl9mbG93ICA9IDA7DQo+ID4+ICsJcWQtPmN1cl90aW4gPSAwOw0KPiA+PiArCXFkLT5j
dXJfZmxvdyAgPSAwOw0KPiA+PiArCXFkLT5jb25maWcgPSBxOw0KPiANCj4gSGVyZTogICBeXl5e
Xl5eDQoNCkknbSBibGluZC4gVGhhbmtzIQ0KDQpSZXZpZXdlZC1ieTogV2lsbGVtIGRlIEJydWlq
biA8d2lsbGVtYkBnb29nbGUuY29tPg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdCAtLSBjYWtlQGxpc3RzLmJ1ZmZlcmJs
b2F0Lm5ldApUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGNha2UtbGVhdmVAbGlzdHMu
YnVmZmVyYmxvYXQubmV0Cg==
