Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id AE444C8D8F1
	for <lists+cake@lfdr.de>; Thu, 27 Nov 2025 10:31:25 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 82FB69D3FC1;
	Thu, 27 Nov 2025 10:31:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1764235885;
	bh=wkja/R7jBc7PgIArk8fFIowLaTNO84LTGzkfkA4tetU=;
	h=To:Cc:In-Reply-To:References:Date:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=CduVrmw3kCYSdUaXMSUUURLYzDkLJ5mb1SlbvSCStnYhNxWVy7ZIn2PgH2nV4k7Os
	 P1OTBliYjv2B+cEthpkJLItmuZGa5iMKku7g5cJEiq2Z0tEIvg8/4gs8k1O79ZYLU0
	 eU9xR7ALHKauzrSzpKfjSV64vBTe/jLLRVz+m/7Q+WzUsWOPqygX+jh3+ja3gWN0q2
	 IJ/RwBhfNiAL8nWfbLF2ePqxbLG1dj+vTm7DImstoc9+vnSgomYUdNLNZrnsBGnCMy
	 elKsMgz0J9xqk39VHpsaQeRuuU/YgSwaE5JJZxpL97OSFnMwoNJ2D3CdqFokkJ73ZC
	 paLJ+dPIW5A7Q==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1764235885;
 b=jaucQpctBpbTpBRisfRCUD3pWiZ9O0elRhjbHG4gkmPQQ4tavTmwFoEJoUJMMa5LQcuR9
 J1DREN5EZcjw8reFBlLxcKXByp1WW2uqPHLpYuYqRTrrCk3WQ63eDLd4rthdzyZ+cPgyFgU
 sDnkR/k6lSLMpM/DezDPVWZeFqzkpts=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1764235885; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=wkja/R7jBc7PgIArk8fFIowLaTNO84LTGzkfkA4tetU=;
 b=79E5TjmeC5EGnpjPAx1RJ7Xn0/1U0Exe4ePXynhdZiXTzAkQnyZvxM5XE1fRd0wJArOq1
 c2UnrHZoAD+hUlAiu52SL5Klwdg79bXWNAf4x5k2reIOyuyOEKoEqrXI0sqVNMeomqFHmA2
 93B6gxV/FaPyOk5nphnYxI2tAUnoqlA=
ARC-Authentication-Results: i=1; mail.toke.dk;
 dkim=pass header.d=toke.dk;
 arc=none;
 dmarc=pass header.from=toke.dk policy.dmarc=reject
Authentication-Results: mail.toke.dk; dkim=pass header.d=toke.dk;
 arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=toke.dk policy.dmarc=reject
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
	t=1764234582; bh=09HyQ4UGpPJyJUkbkCXpJsFR75Ah+m/bJ0r7EglgoYA=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=Tq4NIyqYFAvGb+bD4fGeddhGHdvG7EqNSinF+/zfVtyNZXg1aWT12Pyr8GqYVLLIR
	 2HWl8sWe6KGXXe6ElQ0reZ12FNrm/ONW58/vyFCDCOb3aU8RxSJIt1l5SYDZZvKLij
	 CeLGUxSokFWB+jM2KSG/TWbMKZELAfv2PExc0wum2R+pMRQUhN09yaM+uutqPNKIbk
	 650qZHt6H0R+4tMORZUBD7bOL2sgZTY/3Gu+YLwC2xzsfXk/xryRcrFapcBeVbddAN
	 rTLmhchW6Giz/FeRcbqH3YHZluyajDr3cfl4jDUbgs0Pt1QgBboCj4CeLYwuON60o5
	 BchrFULeUAWUA==
To: Jakub Kicinski <kuba@kernel.org>
Cc: Jamal Hadi Salim <jhs@mojatatu.com>, Cong Wang
 <xiyou.wangcong@gmail.com>, Jiri Pirko <jiri@resnulli.us>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo
 Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Jonas
 =?utf-8?Q?K=C3=B6ppeler?=
 <j.koeppeler@tu-berlin.de>, cake@lists.bufferbloat.net,
 netdev@vger.kernel.org
In-Reply-To: <20251126194305.31ebd8e7@kernel.org>
References: <20251124-mq-cake-sub-qdisc-v1-0-a2ff1dab488f@redhat.com>
 <20251126194305.31ebd8e7@kernel.org>
Date: Thu, 27 Nov 2025 10:09:42 +0100
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87zf87c04p.fsf@toke.dk>
MIME-Version: 1.0
X-MailFrom: toke@toke.dk
X-Mailman-Rule-Hits: implicit-dest
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; max-recipients; max-size; news-moderation; no-subject;
 digests; suspicious-header
Message-ID-Hash: SXQOEZH2M4SCOQLMEN6MUWA42HSAX4H2
X-Message-ID-Hash: SXQOEZH2M4SCOQLMEN6MUWA42HSAX4H2
X-Mailman-Approved-At: Thu, 27 Nov 2025 10:31:23 +0100
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH net-next 0/4] Multi-queue aware sch_cake
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: <https://lists.bufferbloat.net/cake/87zf87c04p.fsf@toke.dk/>
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

SmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz4gd3JpdGVzOg0KDQo+IE9uIE1vbiwgMjQg
Tm92IDIwMjUgMTU6NTk6MzEgKzAxMDAgVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIHdyb3RlOg0K
Pj4gVGhpcyBzZXJpZXMgYWRkcyBhIG11bHRpLXF1ZXVlIGF3YXJlIHZhcmlhbnQgb2YgdGhlIHNj
aF9jYWtlIHNjaGVkdWxlciwNCj4+IGNhbGxlZCAnY2FrZV9tcScuIFVzaW5nIHRoaXMgbWFrZXMg
aXQgcG9zc2libGUgdG8gc2NhbGUgdGhlIHJhdGUgc2hhcGVyDQo+PiBvZiBzY2hfY2FrZSBhY3Jv
c3MgbXVsdGlwbGUgQ1BVcywgd2hpbGUgc3RpbGwgZW5mb3JjaW5nIGEgc2luZ2xlIGdsb2JhbA0K
Pj4gcmF0ZSBvbiB0aGUgaW50ZXJmYWNlLg0KPg0KPiBMb29rcyBsaWtlIHRoaXMgbmVlZHMgYSBy
ZXNwaW4gYWZ0ZXIgRXJpYydzIHJlY2VudCBjaGFuZ2VzLg0KDQpBQ0ssIHdpbGwgZG8gOikNCg0K
LVRva2UNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNh
a2UgbWFpbGluZyBsaXN0IC0tIGNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0ClRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gY2FrZS1sZWF2ZUBsaXN0cy5idWZmZXJibG9hdC5uZXQK
