Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id BE99A320520
	for <lists+cake@lfdr.de>; Sat, 20 Feb 2021 12:53:58 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 58B7E3CB38;
	Sat, 20 Feb 2021 06:53:57 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1613822037;
	bh=CXFDG2rRyFsSvTXN3VizUr4t+ANfZfDHuXzyf0ah6MA=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=Ke5fzx9ZVzr/IHsAQx4YoFBEz758oTeLD2OR+KGudg5smX9AS092KhyQ1CAtnvyiZ
	 G5G2DwyZSHYVTnyIVNzslftZDcZvJZQZIrjWcZMdSEfL643KjLo3tzg0pnSpNFvQJh
	 M9UrRyWJbkMs0VLgIU9o9FfasI2qKb5PB2k/4DSk7hKiP7OHxUhH8cmQodmlMs9xb1
	 EyZgnDDHG8lnHX6GdPgKfw5XhUgKeGrvxupxNtZkK7DDn5EyfVBZoEs0WSnIRBdLg6
	 dRgLPqeBv05L8IaarkRFEtjzja7SmMexlsjwtZkc412Ua+YHtDxLFMto0cHKxbpOEX
	 +vKl78Cjclqqw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 185F33B29E
 for <cake@lists.bufferbloat.net>; Sat, 20 Feb 2021 06:53:48 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
 t=1613822025; bh=R5tyFZi5LlV/pkBRCbZBEgDlUZkhNu2/iIwdY/A4gFM=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=ynu6kIKrQ6cmVm4WC6mHOI/VyGMaGGbEXeId5YwIYB2DtU04yR/HFJVzKSlYRFyR2
 jCQa04tY2658HYUhzhyWxnjnX0EdGLZZ54HrKcKw1srUmPnHNyOQaCeUE/TTV9RxV3
 VAW0U8OxrcS6xNEJTKj2PKvczfwsjdf0O4mlXxYzwHvWpx/6J5FGZS0kkd7xvjmsXV
 1nZwqV4w6ztAPqH6uqjtFgF7X4z9YhrrR2tVK0k1F3iADvMjEKE5rsSbnX84WZg50+
 +vtpUUEJ+p6Ix3iKBwf4CCLDnoVEhsb0g8ctGLMx9XOplOQzz6ujm9OUf/yGxXB4SW
 Hakik1Jvk7ljw==
To: John Sager <john@sager.me.uk>, Peter Lepeska <bizzbyster@gmail.com>
In-Reply-To: <406344b9-49af-54f0-15fd-a17c5f3b604c@sager.me.uk>
References: <CANmPAYHxP9mdmPMsvR=bi=TSNi9+0HbZGz0r89zOLbe3dAyk-Q@mail.gmail.com>
 <87mtw1kx9c.fsf@toke.dk>
 <CANmPAYHFrtbLhGZ1yXNzsaGGf8gP09ap_vUCMX9ggbSRUcpRFg@mail.gmail.com>
 <87im6pkweq.fsf@toke.dk>
 <9a889d98-0fae-d1af-6dea-c534f0df854a@sager.me.uk>
 <CANmPAYF7SEwWUOpj7S3riHufHDm2QtqSjWq8F-+rGJnRk=3xZw@mail.gmail.com>
 <faa1600e-d040-2741-9335-fdf17e32f11b@sager.me.uk>
 <CANmPAYGP0pM5ngV3AJGCumy=CKqgdvyNu6A23w4EXvA20yOs+w@mail.gmail.com>
 <406344b9-49af-54f0-15fd-a17c5f3b604c@sager.me.uk>
Date: Sat, 20 Feb 2021 12:53:45 +0100
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87im6nhs52.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] Enforcing video quality question
X-BeenThere: cake@lists.bufferbloat.net
X-Mailman-Version: 2.1.20
Precedence: list
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
List-Unsubscribe: <https://lists.bufferbloat.net/options/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=unsubscribe>
List-Archive: <https://lists.bufferbloat.net/pipermail/cake>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Subscribe: <https://lists.bufferbloat.net/listinfo/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=subscribe>
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= via Cake
 <cake@lists.bufferbloat.net>
Reply-To: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>
Cc: cake@lists.bufferbloat.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

Sm9obiBTYWdlciA8am9obkBzYWdlci5tZS51az4gd3JpdGVzOgoKPiBZb3Ugd2lsbCBuZWVkIHRv
IHNwZWNpZnkgdGhlIGhvc3RzIGV4cGxpY2l0bHksIHVubGVzcyB5b3UgY2FuIGxpdmUgd2l0aCB0
aGVtIAo+IGFsbCBzaGFyaW5nIG9uZSBiYW5kd2lkdGggY2xhc3MuIEluIHRoYXQgY2FzZSBpZiB5
b3UgaGF2ZSBtb3JlIHRoYW4gb25lIAo+IHVzaW5nIGJhbmR3aWR0aCB0aGV5IHdvdWxkIHNoYXJl
IHRoZSBiYW5kd2lkdGggaW4gdGhhdCBjbGFzcyBlcXVhbGx5LiBJIAo+IGFzc3VtZSBmcm9tIHlv
dXIgb3JpZ2luYWwgcG9zdCB0aGF0IHlvdSB3YW50IGVhY2ggaG9zdCB0byBiZSBsaW1pdGVkIGlu
IAo+IGJhbmR3aWR0aCB0byBhIHNwZWNpZmljIHZhbHVlLCBidXQgdG8gZG8gdGhhdCB5b3UgbmVl
ZCBhIGNsYXNzIGZvciBlYWNoIGhvc3QgCj4gaW4gdGhlIGluZ3Jlc3MgSFRCLgoKSnVzdCBkbyBl
bm91Z2ggY2xhc3NlcyB0aGF0IHlvdSBjYW4gY292ZXIgdGhlIHdob2xlIElQIHNwYWNlPyBBdCBs
ZWFzdApmb3IgSVB2NCB0aGF0J3MgdHJpdmlhbDsgZm9yIElQdjYgeW91J2xsIHByb2JhYmx5IG5l
ZWQgdG8gaGFzaCBhbmQgaG9wZQp0aGF0IHRoZXJlIGFyZSBub3QgdG9vIG1hbnkgY29sbGlzaW9u
cy4uLgoKPiBXaGF0IHlvdSBwcm9iYWJseSBuZWVkIGlzIGEgc2NoZWR1bGVyIHRoYXQgaGFzIGEg
bGltaXQgcGVyIGZsb3cgdXAgdG8KPiBhbiBvdmVyYWxsIGNlaWxpbmcgYmV5b25kIHdoaWNoIGl0
IHNoYXJlcyBlcXVhbGx5LiBJJ20gbm90IGF3YXJlIHRoYXQKPiBhbnkgb2YgdGhlIHNjaGVkdWxl
cnMgZG8gYW55dGhpbmcgbGlrZSB0aGF0LgoKSWYgeW91IHVzZSBGUS1Db0RlbCBhcyB0aGUgbGVh
ZiBxZGlzYyBpbiBIVEIgeW91J2xsIGdldCBmbG93IHNjaGVkdWxpbmcKdG8gZWFjaCBob3N0LiBU
aGVyZSB3b24ndCBiZSBhIHBlci1mbG93ICpsaW1pdCosIGJ1dCB5b3UnbGwgZ2V0IG5pY2UKc2No
ZWR1bGluZyBvZiBhbGwgZmxvd3MgZ29pbmcgdG93YXJkcyBlYWNoIGhvc3QuCgotVG9rZQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcg
bGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0
Lm5ldC9saXN0aW5mby9jYWtlCg==
