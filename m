Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AFA9B2D435
	for <lists+cake@lfdr.de>; Wed, 20 Aug 2025 08:45:45 +0200 (CEST)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 0FA2EC54BFF;
	Wed, 20 Aug 2025 08:45:44 +0200 (CEST)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=mojatatu-com.20230601.gappssmtp.com header.i=@mojatatu-com.20230601.gappssmtp.com header.a=rsa-sha256 header.s=20230601 header.b=bjTHhb7K
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1755672343;
 b=NFJXCbpj7kX7l7EP5+u1s2WEO+nBP7hWb4MfTpqH6aaxc0Ln8xtBin+7yFqIQbi8pw1TS
 GnuTf3BdsDn6T3LpWSUR4zQDhfeoqHRVyKnBJuNsA6XNr9ITwdUlhDJ0cr4xZVcfM7/H/VJ
 Q1f8NeYGXDAaNH+MTxRCeUwwwveanDc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1755672343; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=9BfjjQQ76wh5KyoIaNpeg+HGWh+lQl127iylgu9/SuM=;
 b=jCj6zejZ90K/90nFwVg2sQWFupSu+8hjcTlP4lIPFlrn/QJZoSFaDdFKVMNFG8sljY+Ph
 sqiZSsm5Wt7U4StKKiee81bjUeiA0/EIHq9WMqRWbH9gIvZepbVrnlvTFHX1UKYbRe3i2GJ
 ArHwpBOJRX1ck0qY7AQBBOgDCF/mnck=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=none smtp.mailfrom=mojatatu.com;
 dkim=pass header.d=mojatatu-com.20230601.gappssmtp.com;
 arc=none;
 dmarc=none
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com
 [IPv6:2607:f8b0:4864:20::1036])
	by mail.toke.dk (Postfix) with ESMTPS id 7FDBEC54BE4
	for <cake@lists.bufferbloat.net>; Wed, 20 Aug 2025 08:45:41 +0200 (CEST)
Received: by mail-pj1-x1036.google.com with SMTP id
 98e67ed59e1d1-32326e66dbaso4285184a91.3
        for <cake@lists.bufferbloat.net>;
 Tue, 19 Aug 2025 23:45:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mojatatu-com.20230601.gappssmtp.com; s=20230601; t=1755672340;
 x=1756277140; darn=lists.bufferbloat.net;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/GIOgGi2jTMp7v09lKAxmABqYcMeuVEyv+PG69CHHZo=;
        b=bjTHhb7KhEjhyvyvPX3s+fCO9i8XZRD3hA+CppYwdI94C+tSQ8X6SiEiVmDKpL1zyM
         /0JLcOwBjmM8VUxcSSbHUfscMH58aZC5UGX6kwoYmwoyzd4UqjovcUHO73c+7G87YzVN
         /IVucmC+XC9dhQZ3rRCqzDXkYb0ePVmF1a+DfH36yJb8iCZC1ot6J5IwBq5y386BlzER
         i1zdlRjumRDKe3IJJWZQTCZ3gUZQJXJEJZ4NpXjRAUSAPZOYObGfdO0dNhUeoawOEyOf
         6P+LUmRAGyy17jkxfKyBb3lWBYnBN7dq8okfyVh2t92yMsQ6QBC2sMs5aAUpN3TG6+Cu
         Ifyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755672340; x=1756277140;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/GIOgGi2jTMp7v09lKAxmABqYcMeuVEyv+PG69CHHZo=;
        b=WkUx6gig/OvvDRBoY3qxFlbW3QBf5aP6KUvig3SO7hO1HtcB/ut6r7FMwVCQHHp+a2
         7/QvUfupoDZE2H/CA75KETc0vNfv1ogYbRnnphgpZTxake/oKuspmYVqN04Au6rbDEcw
         aM+Ds5coJh2eTn4aAVdOYDQHwqhOEAyeFzO2wjrBFuQH4FeHCGwswoN/dhArcCn0zu5x
         o3UW9ov/PfLMdskwgVAbx36euHH855EJ1xN+c9/lCvXypuuw8mCSg2IxWeVrelryTEFU
         rzm0QLj0Y7k623jdl+XiZC+De/AwRRtFJv8GiDjjafMJhlQdtAk2AuGs64m4Kk17XiGj
         eZ1Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCW3fqPtmvwU4Xn4R9btzv3s/ijqvJYoMe8R6PIZhQw6QL9pjJK05/bmiIsy/nefoDYXRSaE@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YzgJUfZVRxJSuFL1UU9n+3bBrkgzPswjRTRo46LpPFY/1U2Hsab
	GJ8vSh+/oyv7dXyNXiL5X49ECIeSe5WHeGakAB6A/4UivAaNret4rM7V7pwHYWF/YHTHhPHh1AT
	CUMMR25uq8XENvx8KAwd0uolwhILpoBi5BUlQd1n8
X-Gm-Gg: ASbGnctqJ0hMdK3HLOUbxlgnfDpJFqfIUEdd4jsqizNxP0ntnicCfbtYu/hbiaRD8bs
	AkPw3kQl0kTdeog8gpnS1F7idUnK9gOITuAa26fvM7D52JKmLV4BwzxFOT89Ewx2qLxQaFT9xpS
	WqmyVbEUi0N07QkWMnszq/N8nP5C0HudcPYiotltWZxSmUdErDDCfD5ucnD4gzKk2E8la2geIxv
	g7e8xAIOlKvU2l5
X-Google-Smtp-Source: 
 AGHT+IEDERn0WICGs2a8Kah+93iHICYYCy1ydZIzCJ9Yr3/+Mq9XL1oBmswjXnt5iJUMbq0tBuuTmgt9TYnYSV9cy6k=
X-Received: by 2002:a17:90a:e70c:b0:312:e731:5a6b with SMTP id
 98e67ed59e1d1-324e147375bmr2009084a91.32.1755672339752; Tue, 19 Aug 2025
 23:45:39 -0700 (PDT)
MIME-Version: 1.0
References: <20250819033601.579821-1-will@willsroot.io>
 <871pp7k82y.fsf@toke.dk>
In-Reply-To: <871pp7k82y.fsf@toke.dk>
From: Jamal Hadi Salim <jhs@mojatatu.com>
Date: Wed, 20 Aug 2025 02:45:28 -0400
X-Gm-Features: Ac12FXxVXwHmUJSemVja_qARLGER9n0WQ12wwfJspc-KE09huXzM7bzq_H15PCA
Message-ID: 
 <CAM0EoMk60U8VV_dqiuXsE+AWQHAoiFKSc4FfBgVSJs1sWp+B5w@mail.gmail.com>
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@toke.dk>
Cc: William Liu <will@willsroot.io>, netdev@vger.kernel.org,
 dave.taht@gmail.com,
	xiyou.wangcong@gmail.com, pabeni@redhat.com, kuba@kernel.org,
	savy@syst3mfailure.io, jiri@resnulli.us, davem@davemloft.net,
	edumazet@google.com, horms@kernel.org, cake@lists.bufferbloat.net
Message-ID-Hash: E7YPLTVNABNWSBXYXPNXWJP7WMZC3G2K
X-Message-ID-Hash: E7YPLTVNABNWSBXYXPNXWJP7WMZC3G2K
X-MailFrom: jhs@mojatatu.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH net v2 1/2] net/sched: Make cake_enqueue return NET_XMIT_CN
 when past buffer_limit
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/CAM0EoMk60U8VV_dqiuXsE+AWQHAoiFKSc4FfBgVSJs1sWp+B5w@mail.gmail.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBBdWcgMTksIDIwMjUgYXQgNDo1MeKAr0FNIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNl
biA8dG9rZUB0b2tlLmRrPiB3cm90ZToNCj4NCj4gV2lsbGlhbSBMaXUgPHdpbGxAd2lsbHNyb290
LmlvPiB3cml0ZXM6DQo+DQo+ID4gVGhlIGZvbGxvd2luZyBzZXR1cCBjYW4gdHJpZ2dlciBhIFdB
Uk5JTkcgaW4gaHRiX2FjdGl2YXRlIGR1ZSB0bw0KPiA+IHRoZSBjb25kaXRpb246ICFjbC0+bGVh
Zi5xLT5xLnFsZW4NCj4gPg0KPiA+IHRjIHFkaXNjIGRlbCBkZXYgbG8gcm9vdA0KPiA+IHRjIHFk
aXNjIGFkZCBkZXYgbG8gcm9vdCBoYW5kbGUgMTogaHRiIGRlZmF1bHQgMQ0KPiA+IHRjIGNsYXNz
IGFkZCBkZXYgbG8gcGFyZW50IDE6IGNsYXNzaWQgMToxIFwNCj4gPiAgICAgICAgaHRiIHJhdGUg
NjRiaXQNCj4gPiB0YyBxZGlzYyBhZGQgZGV2IGxvIHBhcmVudCAxOjEgaGFuZGxlIGY6IFwNCj4g
PiAgICAgICAgY2FrZSBtZW1saW1pdCAxYg0KPiA+IHBpbmcgLUkgbG8gLWYgLWMxIC1zNjQgLVcw
LjAwMSAxMjcuMC4wLjENCj4gPg0KPiA+IFRoaXMgaXMgYmVjYXVzZSB0aGUgbG93IG1lbWxpbWl0
IGxlYWRzIHRvIGEgbG93IGJ1ZmZlcl9saW1pdCwgd2hpY2gNCj4gPiBjYXVzZXMgcGFja2V0IGRy
b3BwaW5nLiBIb3dldmVyLCBjYWtlX2VucXVldWUgc3RpbGwgcmV0dXJucw0KPiA+IE5FVF9YTUlU
X1NVQ0NFU1MsIGNhdXNpbmcgaHRiX2VucXVldWUgdG8gY2FsbCBodGJfYWN0aXZhdGUgd2l0aCBh
bg0KPiA+IGVtcHR5IGNoaWxkIHFkaXNjLiBXZSBzaG91bGQgcmV0dXJuIE5FVF9YTUlUX0NOIHdo
ZW4gcGFja2V0cyBhcmUNCj4gPiBkcm9wcGVkIGZyb20gdGhlIHNhbWUgdGluIGFuZCBmbG93Lg0K
PiA+DQo+ID4gSSBkbyBub3QgYmVsaWV2ZSByZXR1cm4gdmFsdWUgb2YgTkVUX1hNSVRfQ04gaXMg
bmVjZXNzYXJ5IGZvciBwYWNrZXQNCj4gPiBkcm9wcyBpbiB0aGUgY2FzZSBvZiBhY2sgZmlsdGVy
aW5nLCBhcyB0aGF0IGlzIG1lYW50IHRvIG9wdGltaXplDQo+ID4gcGVyZm9ybWFuY2UsIG5vdCB0
byBzaWduYWwgY29uZ2VzdGlvbi4NCj4gPg0KPiA+IEZpeGVzOiAwNDZmNmZkNWRhZWYgKCJzY2hl
ZDogQWRkIENvbW1vbiBBcHBsaWNhdGlvbnMgS2VwdCBFbmhhbmNlZCAoY2FrZSkgcWRpc2MiKQ0K
PiA+IFNpZ25lZC1vZmYtYnk6IFdpbGxpYW0gTGl1IDx3aWxsQHdpbGxzcm9vdC5pbz4NCj4gPiBS
ZXZpZXdlZC1ieTogU2F2aW5vIERpY2Fub3NhIDxzYXZ5QHN5c3QzbWZhaWx1cmUuaW8+DQo+DQo+
IEFja2VkLWJ5OiBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gPHRva2VAdG9rZS5kaz4NCg0KUmV2
aWV3ZWQtYnk6IEphbWFsIEhhZGkgU2FsaW0gPGpoc0Btb2phdGF0dS5jb20+DQoNCmNoZWVycywN
CmphbWFsDQo+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpDYWtlIG1haWxpbmcgbGlzdCAtLSBjYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGNha2UtbGVhdmVAbGlzdHMuYnVmZmVyYmxvYXQubmV0
Cg==
