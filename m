Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 9846EC8D757
	for <lists+cake@lfdr.de>; Thu, 27 Nov 2025 10:14:37 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id B11259D3D99;
	Thu, 27 Nov 2025 10:14:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1764234876;
	bh=1Gw64mn5fi+o5NSIARDehu242dqRqyKoa3PVxJIwTo0=;
	h=To:Cc:In-Reply-To:References:Date:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=D6aneAtPZkKxzCNZtQ5eqn4N1pjmSMqLJXuxIdxnuM3Luq9XL9q1f6HZot4iEit+y
	 LM6GzaG3nN6KdrV1tJ8j/wyObrdJlraMK2Aru5qcsBzIa2kTpKDBe6oH1weJ7auQ0k
	 L5L0105uEowPDg3LxMo9l0PjAXNUFGuvhVplqGxk0isVjXytmfJ8XxpKcnaPRHYTvI
	 KLhHh8glcEJ6HOCFgClbWVPOoZrbavj7ZrIZySXxUhvXS9CxCivB1cbMGvtJugv84C
	 ik7SCS936usdoR9Vm4S9C+xekTp/jbjPzjZFUxAWm87ww0it+zumOMcNxBYWo6CrUP
	 Hn1a2Gvr78A8A==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1764234876;
 b=4P0Mh1+tOazwyERKyud0wZ/kOpWYrhcEPtfH9/49SuUKe7CWCXPTdEcB0N1qEhYu9rgLa
 +04f1B7B34F4ZLWPWbvfOFf3VaSRha0UJA9psa1QSe+qVo95px1dYI5uIagpGMdgTP5C7z/
 NZv9huUnL+yBB4qa48gPKq5TyZ+qZNo=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1764234876; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=1Gw64mn5fi+o5NSIARDehu242dqRqyKoa3PVxJIwTo0=;
 b=gJo/Hz+SOOC4FFWpDTyu/Lp/6f9JpzQt4hP7CncliYTq7v1f5I93N5G6yvMzc6c6uFzEC
 cC7naqIVBwWyYfBVQmSbwrYWZ7tjitAV63ZtHj+Xr4OjJ7peFWcDoJPe2MlmsBkSWWymAm3
 m4gnR7iHVTSXEX7tmnMzuj+N5//elBw=
ARC-Authentication-Results: i=1; mail.toke.dk;
 dkim=pass header.d=toke.dk;
 arc=none;
 dmarc=pass header.from=toke.dk policy.dmarc=reject
Authentication-Results: mail.toke.dk; dkim=pass header.d=toke.dk;
 arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=toke.dk policy.dmarc=reject
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
	t=1764234874; bh=8LqIJbUdOQ/q1iHHyZfNB++O27UD71zydFgZOsV8bsk=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=xbAjDc9MFejGWVe1doJC3xl32LlNHvNanXTkGFX1xMXbVZcr4NKPEgURAnYxDWNlZ
	 LaPyCZHOFilwaAy6yAsEtLmPvcsrffeb0onI3PGrAbY1k9wcF5DIMIFU20A3+51/+s
	 +LlugPVVV0BiW3IQFC0ej0kdZrK6nEN3Ia6xb5d7CsqEpoUiVvLbwk3nt2TzR213Jd
	 gu4tGNC5HrJjVIyLvKJHirURERaHNjsI0P6R22eTVD/YZzDdXuBSBKqNB5m6bLK0hu
	 6EyxZQwRIXlgqRUsZUVd/L+RuqREPAS8I3KGpPh0N/sXsnRSYwNJwzZWOb3KMtc3EA
	 /3hRocGcKTOAg==
To: Xiang Mei <xmei5@asu.edu>, security@kernel.org
Cc: netdev@vger.kernel.org, xiyou.wangcong@gmail.com,
 cake@lists.bufferbloat.net, bestswngs@gmail.com, Xiang Mei <xmei5@asu.edu>
In-Reply-To: <20251126194513.3984722-1-xmei5@asu.edu>
References: <20251126194513.3984722-1-xmei5@asu.edu>
Date: Thu, 27 Nov 2025 10:14:32 +0100
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87wm3bbzwn.fsf@toke.dk>
MIME-Version: 1.0
Message-ID-Hash: 2MGWSC6F2NLISUAFKRYFTWRZ4VENKPK4
X-Message-ID-Hash: 2MGWSC6F2NLISUAFKRYFTWRZ4VENKPK4
X-MailFrom: toke@toke.dk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH net v7 1/2] net/sched: sch_cake: Fix incorrect qlen
 reduction in cake_drop
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: <https://lists.bufferbloat.net/cake/87wm3bbzwn.fsf@toke.dk/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
From: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen_via_Cake?=
 <cake@lists.bufferbloat.net>
Reply-To: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

WGlhbmcgTWVpIDx4bWVpNUBhc3UuZWR1PiB3cml0ZXM6DQoNCj4gSW4gY2FrZV9kcm9wKCksIHFk
aXNjX3RyZWVfcmVkdWNlX2JhY2tsb2coKSBpcyB1c2VkIHRvIHVwZGF0ZSB0aGUgcWxlbg0KPiBh
bmQgYmFja2xvZyBvZiB0aGUgcWRpc2MgaGllcmFyY2h5LiBJdHMgY2FsbGVyLCBjYWtlX2VucXVl
dWUoKSwgYXNzdW1lcw0KPiB0aGF0IHRoZSBwYXJlbnQgcWRpc2Mgd2lsbCBlbnF1ZXVlIHRoZSBj
dXJyZW50IHBhY2tldC4gSG93ZXZlciwgdGhpcw0KPiBhc3N1bXB0aW9uIGJyZWFrcyB3aGVuIGNh
a2VfZW5xdWV1ZSgpIHJldHVybnMgTkVUX1hNSVRfQ046IHRoZSBwYXJlbnQNCj4gcWRpc2Mgc3Rv
cHMgZW5xdWV1aW5nIGN1cnJlbnQgcGFja2V0LCBsZWF2aW5nIHRoZSB0cmVlIHFsZW4vYmFja2xv
Zw0KPiBhY2NvdW50aW5nIGluY29uc2lzdGVudC4gVGhpcyBtaXNtYXRjaCBjYW4gbGVhZCB0byBh
IE5VTEwgZGVyZWZlcmVuY2UNCj4gKGUuZy4sIHdoZW4gdGhlIHBhcmVudCBRZGlzYyBpcyBxZnFf
cWRpc2MpLg0KPg0KPiBUaGlzIHBhdGNoIGNvbXB1dGVzIHRoZSBxbGVuL2JhY2tsb2cgZGVsdGEg
aW4gYSBtb3JlIHJvYnVzdCB3YXkgYnkNCj4gb2JzZXJ2aW5nIHRoZSBkaWZmZXJlbmNlIGJlZm9y
ZSBhbmQgYWZ0ZXIgdGhlIHNlcmllcyBvZiBjYWtlX2Ryb3AoKQ0KPiBjYWxscywgYW5kIHRoZW4g
Y29tcGVuc2F0ZXMgdGhlIHFkaXNjIHRyZWUgYWNjb3VudGluZyBpZiBjYWtlX2VucXVldWUoKQ0K
PiByZXR1cm5zIE5FVF9YTUlUX0NOLg0KPg0KPiBUbyBlbnN1cmUgY29ycmVjdCBjb21wZW5zYXRp
b24gd2hlbiBBQ0sgdGhpbm5pbmcgaXMgZW5hYmxlZCwgYSBuZXcNCj4gdmFyaWFibGUgaXMgaW50
cm9kdWNlZCB0byBrZWVwIHFsZW4gdW5jaGFuZ2VkLg0KPg0KPiBGaXhlczogMTVkZTcxZDA2YTQw
ICgibmV0L3NjaGVkOiBNYWtlIGNha2VfZW5xdWV1ZSByZXR1cm4gTkVUX1hNSVRfQ04gd2hlbiBw
YXN0IGJ1ZmZlcl9saW1pdCIpDQo+IFNpZ25lZC1vZmYtYnk6IFhpYW5nIE1laSA8eG1laTVAYXN1
LmVkdT4NCg0KUmV2aWV3ZWQtYnk6IFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiA8dG9rZUB0b2tl
LmRrPg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2Fr
ZSBtYWlsaW5nIGxpc3QgLS0gY2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKVG8gdW5zdWJzY3Jp
YmUgc2VuZCBhbiBlbWFpbCB0byBjYWtlLWxlYXZlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldAo=
