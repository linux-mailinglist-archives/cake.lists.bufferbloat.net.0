Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id A972BC945F5
	for <lists+cake@lfdr.de>; Sat, 29 Nov 2025 18:45:48 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id A0F229E1B75;
	Sat, 29 Nov 2025 18:45:47 +0100 (CET)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=c1Py2d7U
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1764438347;
 b=EKax+aMI7s7Tp2itwHBRfh+dixYVbHD+PZ0dBVY5YFGO9qIjoOw4kVL8kCZUCLACaTgz4
 wImtvDakxrnVnzcxhokXjvUgnGc1oVObMUh+LTp7HLpaVgvhP06jNOkICTPJg/li63jZ1yt
 Dpe0G5KZcx2StOCurwQN38ZP2hn4ndA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1764438347; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=8wgxqsf8KR4Fl55dCsLl4/2lLBliDjfPSvwK2DK26/U=;
 b=BXmV1ZvT0LJqf2t1UuQkzA+CJdFLuQ62ueQLJWE25WVt3OAJoSsVaTo70fEZLC2Tx11Rk
 KkwaUJtplJs3cVgLAS612CkWf7LJHbiRhy5OaAoJKSA7dYt2e8D4UFyNbI+GwyQS+6eezjF
 3Qy/ayw5ySMFgWXYzO5aZ2sMw5aFKfA=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com;
 arc=none;
 dmarc=pass header.from=gmail.com policy.dmarc=quarantine
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com; arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=gmail.com
 policy.dmarc=quarantine
Received: from mail-yw1-x112b.google.com (mail-yw1-x112b.google.com
 [IPv6:2607:f8b0:4864:20::112b])
	by mail.toke.dk (Postfix) with ESMTPS id 20B1E9E17C4
	for <cake@lists.bufferbloat.net>; Sat, 29 Nov 2025 17:56:18 +0100 (CET)
Received: by mail-yw1-x112b.google.com with SMTP id
 00721157ae682-786a822e73aso27170157b3.3
        for <cake@lists.bufferbloat.net>;
 Sat, 29 Nov 2025 08:56:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764435377; x=1765040177;
 darn=lists.bufferbloat.net;
        h=content-transfer-encoding:mime-version:subject:references
         :in-reply-to:message-id:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yyK1frpIkqMT8VKh9JIYl1DpSkJ3TM9bY2MXFN6WCgQ=;
        b=c1Py2d7UIH9adlmzPRdlc1zUdpnHc7Rf1xmEUlHZKSCoQvDXclYKRiaecHBWxtjecy
         o2nZcA8rFMu6S1ubZSqvWOUHkk0Dp1YRRbbH2uzIdFkb5irlxQci1bP3MTZDh5PDNR9D
         bFkUXXIPHNJDTCuxcEkW1Dz+6SU2A7cYDrN9U1a5pOyGvdazsICsB5DOtdJG+G7R0gEw
         GWJHPxXDXsH8vkLuoxpNOf06bWZzHCpI89UNVqwhwZEcjtAt7Cf3MOGyLDlIJsfgGpVO
         wT5yulg3HEm/hlzvQ/0W6rTs6vCCwX2xW+LYup0KgJ6J4tvTrT7T9E2RK9eQBYjmomw3
         nmWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764435377; x=1765040177;
        h=content-transfer-encoding:mime-version:subject:references
         :in-reply-to:message-id:cc:to:from:date:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yyK1frpIkqMT8VKh9JIYl1DpSkJ3TM9bY2MXFN6WCgQ=;
        b=DwDl8M3RuQqdRhAggbfAZvQCHfAHd4A3ErN29XAG/bZnxjTArwlqi3J9pOu+C22asw
         GMkSWEjfiBGJHvI8iXMiFssfvNyJk03S1E5SmHfkrkw6FUBj+pP1Sx4cBITVufmdl/W1
         miOUMVDF45RG/fVcpeoi6Q7gNoKbNHUSvYc82irrDeAcLKfdYfT9mflUtyBBvJ2Qo/xa
         p8EBpLW0yXaF41irCnXvGT4zfCB/0iCtwvU56zgSVYoSJ1Yh0KY0NNd/SbFNgzD9KgAr
         1PkxpciGcZVzp3GZdvnpWPpZGIal/v/ChDpbR+c0TWzCmIeGAGfcSB7Np20Lt6NYqJr2
         vHFg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXMtqMhb94CRTvAAfX3V2cJmCw4go9py4YDSsHzIZ5CjHeMbqdzSaB9tY3syv4i6bJzfN4d@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YzyFpcIgrYR6l8DykLPtjJM9IiYNWzJYRkVkfGLA0FPEJR7dEcx
	ugKk4Ed5uGFdj8p2a3OB5RNEQnQZ3DvjAtYGO8DkjabadKaCytrvTUPz
X-Gm-Gg: ASbGncv6EehfB8HYMzC3BuL7MSKWYOvRdPo3/ZCHMNqbyIT50y6xBIwxa6R1z6SZqvk
	FVM7FjfdMtICDyK/oIkMCww8BK12pBppPLAERJ9kLjUyz38G8tfcmwAHp3mfHvLFcBKeJUqRJKa
	5BKIaJTOFOsFPydG41E535aNV7Rh3ozndaxHVtNLfZWVTPrtXqnzoeaCK/H4PszI5JYyYzE8ZGZ
	WqmmjRpY6vrFXrMd7bsR59TI0QITv91gzQUMAQWKzzf26RgaEitdvH6I9GT4Dn/CiACGB2gHlTJ
	/QCmIs5XTbIVC9TkvRJeFHtF9O8oKASJcILMczKrt24M9/tTzfqQxxp4npUHthV86S0mGnUrPLZ
	bBw0T+luitQht6YVHe+atODF0UPVWVeg6XiZlJ5Ie8RkpBtUKLKczafmuuhWldN3xouMq9SzoTW
	QEs6JtRAZyOooxL69TbEY/AljBywlsEZFAjE1nfRnzBUR1o2meJn8d6nsHsrgBkPBex7c=
X-Google-Smtp-Source: 
 AGHT+IEcrQRp4ITJhrH7YWzMD2/YwlxTQu831k+ljd/SPFUJAFFJTOlxkBAmUUm8nJcxZVwXYw0omQ==
X-Received: by 2002:a05:690c:f8f:b0:786:5712:46c4 with SMTP id
 00721157ae682-78a8b495420mr279788797b3.27.1764435377025;
        Sat, 29 Nov 2025 08:56:17 -0800 (PST)
Received: from gmail.com (116.235.236.35.bc.googleusercontent.com.
 [35.236.235.116])
        by smtp.gmail.com with UTF8SMTPSA id
 00721157ae682-78ad0d5fefbsm27621837b3.20.2025.11.29.08.56.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Nov 2025 08:56:16 -0800 (PST)
Date: Sat, 29 Nov 2025 11:56:15 -0500
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
Message-ID: <willemdebruijn.kernel.352b3243bf88@gmail.com>
In-Reply-To: <87a505b3dt.fsf@toke.dk>
References: <20251127-mq-cake-sub-qdisc-v2-0-24d9ead047b9@redhat.com>
 <20251127-mq-cake-sub-qdisc-v2-2-24d9ead047b9@redhat.com>
 <willemdebruijn.kernel.2e44851dd8b26@gmail.com>
 <87a505b3dt.fsf@toke.dk>
Mime-Version: 1.0
X-MailFrom: willemdebruijn.kernel@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation
Message-ID-Hash: TJJLHTORGOGZVXBC3WHKIR5TQAHVX6ZY
X-Message-ID-Hash: TJJLHTORGOGZVXBC3WHKIR5TQAHVX6ZY
X-Mailman-Approved-At: Sat, 29 Nov 2025 18:45:46 +0100
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH net-next v2 2/4] net/sched: sch_cake: Add cake_mq qdisc for
 using cake on mq devices
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/willemdebruijn.kernel.352b3243bf88@gmail.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIHdyb3RlOg0KPiBXaWxsZW0gZGUgQnJ1aWpuIDx3aWxs
ZW1kZWJydWlqbi5rZXJuZWxAZ21haWwuY29tPiB3cml0ZXM6DQo+IA0KPiA+IFRva2UgSMO4aWxh
bmQtSsO4cmdlbnNlbiB3cm90ZToNCj4gPj4gQWRkIGEgY2FrZV9tcSBxZGlzYyB3aGljaCBpbnN0
YWxscyBjYWtlIGluc3RhbmNlcyBvbiBlYWNoIGhhcmR3YXJlDQo+ID4+IHF1ZXVlIG9uIGEgbXVs
dGktcXVldWUgZGV2aWNlLg0KPiA+PiANCj4gPj4gVGhpcyBpcyBqdXN0IGEgY29weSBvZiBzY2hf
bXEgdGhhdCBpbnN0YWxscyBjYWtlIGluc3RlYWQgb2YgdGhlIGRlZmF1bHQNCj4gPj4gcWRpc2Mg
b24gZWFjaCBxdWV1ZS4gU3Vic2VxdWVudCBjb21taXRzIHdpbGwgYWRkIHNoYXJpbmcgb2YgdGhl
IGNvbmZpZw0KPiA+PiBiZXR3ZWVuIGNha2UgaW5zdGFuY2VzLCBhcyB3ZWxsIGFzIGEgbXVsdGkt
cXVldWUgYXdhcmUgc2hhcGVyIGFsZ29yaXRobS4NCj4gPj4gDQo+ID4+IFJldmlld2VkLWJ5OiBK
YW1hbCBIYWRpIFNhbGltIDxqaHNAbW9qYXRhdHUuY29tPg0KPiA+PiBTaWduZWQtb2ZmLWJ5OiBU
b2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gPHRva2VAcmVkaGF0LmNvbT4NCj4gPj4gLS0tDQo+ID4+
ICBuZXQvc2NoZWQvc2NoX2Nha2UuYyB8IDIxNCArKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKy0NCj4gPj4gIDEgZmlsZSBjaGFuZ2VkLCAyMTMgaW5zZXJ0
aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiA+DQo+ID4gSXMgdGhpcyBjb2RlIGR1cGxpY2F0aW9u
IHVuYXZvaWRhYmxlPw0KPiA+DQo+ID4gQ291bGQgdGhlIHNhbWUgYmUgYWNoaWV2ZWQgYnkgZWl0
aGVyDQo+ID4NCj4gPiBleHRlbmRpbmcgdGhlIG9yaWdpbmFsIHNjaF9tcSB0byBoYXZlIGEgdmFy
aWFudCB0aGF0IGNhbGxzIHRoZQ0KPiA+IGN1c3RvbSBjYWtlX21xX2NoYW5nZS4NCj4gPg0KPiA+
IE9yIGF2b2lkIGhhbmdpbmcgdGhlIHNoYXJlZCBzdGF0ZSBvZmYgb2YgcGFyZW50IG1xIGVudGly
ZWx5LiBIYXZlIHRoZQ0KPiA+IGNha2UgaW5zdGFuY2VzIHNoYXJlIGl0IGRpcmVjdGx5LiBFLmcu
LCB3aGVyZSBhbGwgYnV0IHRoZSBpbnN0YW5jZSBvbg0KPiA+IG5ldGRldl9nZXRfdHhfcXVldWUo
ZGV2LCAwKSBhcmUgb3BlbmVkIGluIGEgc3BlY2lhbCAic2hhcmVkIiBtb2RlIChhDQo+ID4gYml0
IGxpa2UgU09fUkVVU0VQT1JUIHNvY2tldHMpIGFuZCBsb29rdXAgdGhlIHN0YXRlIGZyb20gdGhh
dA0KPiA+IGluc3RhbmNlLg0KPiANCj4gV2UgYWN0dWFsbHkgc3RhcnRlZCBvdXQgd2l0aCBzb21l
dGhpbmcgbGlrZSB0aGF0LCBidXQgZW5kZWQgdXAgd2l0aCB0aGUNCj4gY3VycmVudCB2YXJpYW50
IGZvciBwcmltYXJpbHkgVUFQSSByZWFzb25zOiBIYXZpbmcgdGhlIG1xIHZhcmlhbnQgYmUgYQ0K
PiBzZXBhcmF0ZSBuYW1lZCBxZGlzYyBpcyBzaW1wbGUgYW5kIGVhc3kgdG8gdW5kZXJzdGFuZCAo
J2Nha2UnIGdldHMgeW91DQo+IHNpbmdsZS1xdWV1ZSwgJ2Nha2VfbXEnIGdldHMgeW91IG11bHRp
LXF1ZXVlKS4NCj4gDQo+IEkgdGhpbmsgaGF2aW5nIHRoYXQgdmFyaWFudCBsaXZlIHdpdGggdGhl
IGNha2UgY29kZSBtYWtlcyBzZW5zZS4gSQ0KPiBzdXBwb3NlIHdlIGNvdWxkIHJldXNlIGEgY291
cGxlIG9mIHRoZSBtcSBjYWxsYmFja3MgYnkgZXhwb3J0aW5nIHRoZW0NCj4gYW5kIGNhbGxpbmcg
dGhlbSBmcm9tIHRoZSBjYWtlIGNvZGUgYW5kIGF2b2lkIHNvbWUgZHVwbGljYXRpb24gdGhhdCB3
YXkuDQo+IEkgY2FuIGZvbGxvdyB1cCB3aXRoIGEgcGF0Y2ggdG8gY29uc29saWRhdGUgdGhvc2Ug
aWYgeW91IHRoaW5rIGl0IGlzDQo+IHdvcnRoIGl0IHRvIGRvIHNvPw0KDQpTaW5jZSBtb3N0IGZ1
bmN0aW9ucyBhcmUgaWRlbnRpY2FsLCBJIGRvIHRoaW5rIHJldXNpbmcgdGhlbSBpcw0KcHJlZmVy
YWJsZSBvdmVyIGR1cGxpY2F0aW5nIHRoZW0uDQoNCkknbSBub3QgZnVsbHkgY29udmluY2VkIHRo
YXQgbXFfY2FrZSArIGNha2UgaXMgcHJlZmVyYWJsZSBvdmVyDQptcSArIGNha2UgKG15IHNlY29u
ZCBzdWdnZXN0aW9uKS4gV2UgYWxzbyBkbyBub3QgaGF2ZSBhIHNlcGFyYXRlDQptcV9mcSwgc2F5
LiBCdXQgbWluZSBpcyBqdXN0IG9uZSBvcGluaW9uIGZyb20gdGhlIHBlYW51dCBnYWxsZXJ5Lg0K
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1h
aWxpbmcgbGlzdCAtLSBjYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIGNha2UtbGVhdmVAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cg==
