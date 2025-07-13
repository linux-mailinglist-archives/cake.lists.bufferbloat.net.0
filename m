Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id E38C5B0330A
	for <lists+cake@lfdr.de>; Sun, 13 Jul 2025 23:26:44 +0200 (CEST)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id C11E2B6223E;
	Sun, 13 Jul 2025 23:26:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1752442003;
	bh=lnaCz5vtp138beXUGj4tlyH4d39a1yUZRaup2HYILLE=;
	h=To:Cc:In-Reply-To:References:Date:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=P5DnH19AKXkOKuE/7UrNaJ2v/oIFNEUmsgbGz4TEGdga//vZyHx//9KOSwzfLWsij
	 P/NHU8VyEGnwbTDK1hLIDfqiNSbDFpByZfAjA1GjFGCe7GwCqqCTRylJjj/TG2Zq0i
	 48cgXQ8yegd8EbPOW83//B4usSiMfi8StnWhBbaLN5V8x8Jrb6FEqG6JYbYBFy7O7z
	 7p0tCnHocPajw+ipXZJFHfLwsZxL0ndvQ2bwiNUO5b+tImPdSxHMMHDe6MP0ewn/pF
	 MMHULAtQ83l5skymAN+jyrqbngsA649vtB8RxJSkkh6FpcWbfWaPrqRvOsPp6hkyq8
	 gipmLuJf1uv0g==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1752442003;
 b=VIhZsvjoOWu/IAv+AMP11ulVxQPokNQ2FddZeCA78uBFECg35sG2L2DIOpb6RiwiNsEDS
 zsM/+9kf4Y+yJXhjR2jZwse7ACxUZicGYzNCB7cmOSJHI49X0wZBu0a0FGF50Dnc6vOiRlD
 Pr4SUZgBY3pNxXjjJ63PzDkvxtOtcm4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1752442003; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=lnaCz5vtp138beXUGj4tlyH4d39a1yUZRaup2HYILLE=;
 b=z6Jq149IFfjhGXb1H8F7LDEfkmCsPORCapWVBKk2BTzhdtSTxuBneqfPWdT19MOKRXwX/
 7SbRdOchtyioTWNlLYmfavdnRAD9scQMRZ3tC8QAMjYTfxZF7yJ24+wZDwKUGenad00De6D
 RURTomkZNuRrS9JUKCuFdUeffLuFALQ=
ARC-Authentication-Results: i=1; mail.toke.dk;
 dkim=pass header.d=toke.dk;
 arc=none;
 dmarc=pass header.from=toke.dk policy.dmarc=reject
Authentication-Results: mail.toke.dk; dkim=pass header.d=toke.dk;
 arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=toke.dk policy.dmarc=reject
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
	t=1752442001; bh=ij6rzZ6ddYdJ9HSJn9BXy2HRqdzmRo98FwXmJpHzDYM=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=q4HKdKjmc8aC7i/kqGOnhwoMyFmBqb33LW/7wg19u5hWXVIR/LBAqk+9HojTsWzgS
	 yCa3JuEt9bn7b7rWxJT98ZH3d/QfX92Y2tnjM9OM9AKvyFGaA8aFz49swhkdVKHUgN
	 H3elrcnAK1jWel1y1aqdJtgnNUEy+5wwQ6fZpqjWcgMw+fXdv3id8KkXMUhkUTJDjH
	 3WGdDigHxNpwRYB7PG+He8Qd66IiTYm/7TQoumByLtqDKMzdmwV0n5KhU+dtu0dSXa
	 FVEJazipmgndT0U1ykE39Qhc22DoJQv8U/5RFscim7vUhYeZvHnGoBYcSkJagCQ8R3
	 scsflI6pAFh0g==
To: dave seddon <dave.seddon.ca@gmail.com>
Cc: cake@lists.bufferbloat.net
In-Reply-To: 
 <CANypexSfiDYsSohFASw1ioiAmxAi=8N39+DbXvT1JhZmc2JQOg@mail.gmail.com>
References: <87h5zg0xyg.fsf@toke.dk>
 <CANypexSfiDYsSohFASw1ioiAmxAi=8N39+DbXvT1JhZmc2JQOg@mail.gmail.com>
Date: Sun, 13 Jul 2025 23:26:40 +0200
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <878qkrzsrz.fsf@toke.dk>
MIME-Version: 1.0
Message-ID-Hash: DCKIFSGSIJCN7GT4X7ZFXSLDMRFMMHZU
X-Message-ID-Hash: DCKIFSGSIJCN7GT4X7ZFXSLDMRFMMHZU
X-MailFrom: toke@toke.dk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: Mailing list migration complete
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: <https://lists.bufferbloat.net/cake/878qkrzsrz.fsf@toke.dk/>
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

ZGF2ZSBzZWRkb24gPGRhdmUuc2VkZG9uLmNhQGdtYWlsLmNvbT4gd3JpdGVzOg0KDQo+IFdlbGwg
ZG9uZSDwn5GNDQoNClRoYW5rcyEgOikNCg0KLVRva2UNCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0IC0tIGNha2VAbGlzdHMu
YnVmZmVyYmxvYXQubmV0ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gY2FrZS1sZWF2
ZUBsaXN0cy5idWZmZXJibG9hdC5uZXQK
