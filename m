Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id E2B7EC9162A
	for <lists+cake@lfdr.de>; Fri, 28 Nov 2025 10:15:57 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id AC95F9D8C92;
	Fri, 28 Nov 2025 10:15:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1764321356;
	bh=ktY1fdqlZblqTJk2j31jUgYTwCFDO5rEGkLc4h1cHr8=;
	h=To:Cc:In-Reply-To:References:Date:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=kELcLjXCYwHo7r/J7DLuVpiZ188xqUEyt5V809b1++BJbkzUR60nOtP1JpP5+H66Q
	 myTEZU0dy3CoiAWRob9w2/lBs3WxVAUN/vSZiM1YH6pP0bT+xroqyx1LuyiBYmarlI
	 WLTOAdTT7QPB9ewgQMLellfa5XUKPry14neEqFRQ63Achi7GpCh6UZq5v76kHW8J5u
	 dlfQRGiA/Bf6j9ReWnrf/RAnFfO4azBnFrnTaYExFyphyQ/RvpVVoCcwyKp4ZchFLq
	 77Lg2svMIrPQo4iQ3v7us1IFTbLPmN3tIToojYvY/wQmp6GTXUgAEoxRjvQsaRLtoE
	 qmIU9RrDLXRUQ==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1764321356;
 b=RwMnpuD65ZKtDbxF50rYG8ZrQbub8U02B/Qieuew8uRFZm5kDN9EKXHibCSCnNwEK2BD5
 mLod9PV72jCtf2XaJCkrBVxiaswbgN6fnzGQC0zXqoCU1G1TUOrBoPvDET2ZqiuWMuDM4TF
 4KKROHFcbT6cuMhHI+Pcn7BuFmnKoUQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1764321356; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=ktY1fdqlZblqTJk2j31jUgYTwCFDO5rEGkLc4h1cHr8=;
 b=P7buDb9OU99PhsGqOpWSCCxjXop4uCCf3kYqcOHPkYoKK6cy/LQ3Nb+qpq9xXMMWG4ZoA
 T+ciPEhh/Sb05GrsqIw9LNp03B/OryVVgCeXP0B/QzaocJcNAqsymJSaEK97DDSIIvowaA1
 sY+y3mKmuovZc/QLUgulxK7iOrlUqSI=
ARC-Authentication-Results: i=1; mail.toke.dk;
 dkim=pass header.d=toke.dk;
 arc=none;
 dmarc=pass header.from=toke.dk policy.dmarc=reject
Authentication-Results: mail.toke.dk; dkim=pass header.d=toke.dk;
 arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=toke.dk policy.dmarc=reject
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
	t=1764321354; bh=F+CjRqBrjC0rAcQccPgfnKMmmA7NQZelpcIoR5ArYis=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=QsDUx4eiQf3NYHLRNNEzF9dhPWxQbNFAhRMn9f88igM2SH7qH6hULPNDogqOagoxQ
	 oEWH9geuciATS5yEotIzL6aaiLSBnBjX/t4Myc4OFfPm8YjLrtZcECwxgD+IXHmuI+
	 dng9LELNcRnYr+tQ9ePRXkEkrEaedi0So7hP100DI2/KwuFGfXBGnyElodl87Ca2s7
	 rUj1U2LQSRb5jRiGK5ma0Vf/RRel41XPdDAC4ppFRVLvKSrnVPVNPyLFkpg6WRWCFj
	 EVZJk9+mLTCSLiwV4hQBTVbQC61APOOnqPTHr6XBgbdJ41ZVJ0ocDIhVZbqxjqMOpV
	 zDkukhREo8QCw==
To: Xiang Mei <xmei5@asu.edu>, security@kernel.org
Cc: netdev@vger.kernel.org, xiyou.wangcong@gmail.com,
 cake@lists.bufferbloat.net, bestswngs@gmail.com, Xiang Mei <xmei5@asu.edu>
In-Reply-To: <20251128001415.377823-1-xmei5@asu.edu>
References: <20251128001415.377823-1-xmei5@asu.edu>
Date: Fri, 28 Nov 2025 10:15:53 +0100
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87ikeubjqu.fsf@toke.dk>
MIME-Version: 1.0
Message-ID-Hash: RLXKJ4GJ3LAEZM4GFWQ74GOUCQZMIJ7J
X-Message-ID-Hash: RLXKJ4GJ3LAEZM4GFWQ74GOUCQZMIJ7J
X-MailFrom: toke@toke.dk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH net v8 1/2] net/sched: sch_cake: Fix incorrect qlen
 reduction in cake_drop
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: <https://lists.bufferbloat.net/cake/87ikeubjqu.fsf@toke.dk/>
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
LmVkdT4NCg0KUGxlYXNlIHJldGFpbiB0YWdzIHdoZW4gcmVwb3N0aW5nLi4uDQoNClJldmlld2Vk
LWJ5OiBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gPHRva2VAdG9rZS5kaz4NCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0IC0t
IGNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gY2FrZS1sZWF2ZUBsaXN0cy5idWZmZXJibG9hdC5uZXQK
