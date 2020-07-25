Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id A2F3E22DA0C
	for <lists+cake@lfdr.de>; Sat, 25 Jul 2020 23:28:00 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 9791F3CB38;
	Sat, 25 Jul 2020 17:27:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1595712479;
	bh=+mLUvMwV4F7vB8NUR0qkOAS5alylhizX4LuJsEW7TtY=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hR4xMqzNY8PtXim6Jbk8Obzs7i4MLr3lMt3ndxPmlW+ltPi1uuPLcyrJnrLwHsXxg
	 LaChrrR4J8KRBC0aNiRMqi8wUNQNN2C8AePrBuphyZ3xKm+zIpkgvsXXl6k1hDM9hn
	 RQ83n9zJBQOOIWdWH+Wmrz3T6mqVf7z7s6Rf2QHXiAk3W4MHoYYm9SOJ6Ijea19lmm
	 oP69iRXnl+j8pL2BFSgBnK9TxwMizKT+hw8MBVXOaF5Sp7muwb87rGhhzlw2ZumvcC
	 8HZbnTOCtGJIRDo/GrnvyMNYpLbRqLXuhUcGsQncgHRqkfv/MrxOIkJ/WLUYAMFUo9
	 m3v8qscrY7lqw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com
 [IPv6:2a00:1450:4864:20::12f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id C2D443B29E
 for <cake@lists.bufferbloat.net>; Sat, 25 Jul 2020 17:27:57 -0400 (EDT)
Received: by mail-lf1-x12f.google.com with SMTP id d2so1388224lfj.1
 for <cake@lists.bufferbloat.net>; Sat, 25 Jul 2020 14:27:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=CkxFbqG10B5dYZyjQrSjNtbFIIP3MQRcXPvgrlWmxi8=;
 b=Q28mKK923uBNq/FcIUPJ4tAAWj8ZJn/arPnfJdAxC+Q/oDDA1rdUjTbIb/CfWaMa+n
 g1Qw9qOa9KMiEVIZoQqkcHWrmkMNfVZzqvMhSV93UD4YN2hS+W3hPBfgADDWeMhQS2Rl
 F7cWCzYrrfz+BWYg6OSnFzVBizT2/xgRnqJ6WGOSBnYxigadKxkS0VvACmChw62JTo/0
 yqT6HIXJc3y/sxbLHf5eBKnhNZkLxOwLS1qoZueL83j+G8+AD7V0OulKXKz7TOM055Xm
 WAKlMD1je9FAsvruZhcNQtEYf7YEcMwh7s4SLw6ZbyJ9uB+RDpXbJ6TspxJWeGc3/X4H
 aiyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=CkxFbqG10B5dYZyjQrSjNtbFIIP3MQRcXPvgrlWmxi8=;
 b=IUJiyHV6TDWxGfVpqyAFvEXIhyJYulWrYnhfbF3igB3IYS2UmRAElwpI0iOqv/MLZM
 kov6kZ793b6P3odKqboRfrF64X63pCD0dsMMJMN51Rt8IG4ngjoTp/fjU1JPKFgTXZ3w
 xOUuEhS01GQ0YjeKfLwVgcTB0ppABT6UpzHkfg1AUHr9CVYNPZkFuUx2KpD0NHptcxeF
 KrsZFskMVJ7T330egFpZroCHhi9BtmeD5f3czgbhS9IdDNVPjneNUBOaL44a9jG0oVMu
 TGxVWLT0Gr/NgHUMv8HY2hydOWGa1lT9RQWc+xp0VI2qAgOBApx/pX5FYeYBQu79DCKd
 1YsQ==
X-Gm-Message-State: AOAM531wbiIjMCOU6AH3KPTQYzaGPAEsBOcrvQAYSaFFgV61ffzXMh2F
 gXqjc7aM8uoXS2dVSR9TAiUsPp5s
X-Google-Smtp-Source: ABdhPJxXs7cSkLOsUWP8xKwYndDLov5L1LnK5GlQ/TxT3qcea9Mv2nJV0vPamxRh3EvpD5GpbzPKew==
X-Received: by 2002:ac2:5f81:: with SMTP id r1mr7971195lfe.168.1595712476672; 
 Sat, 25 Jul 2020 14:27:56 -0700 (PDT)
Received: from jonathartonsmbp.lan (83-245-252-162-nat-p.elisa-mobile.fi.
 [83.245.252.162])
 by smtp.gmail.com with ESMTPSA id u21sm864249lff.91.2020.07.25.14.27.55
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 25 Jul 2020 14:27:56 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.6\))
From: Jonathan Morton <chromatix99@gmail.com>
X-Priority: 3 (Normal)
In-Reply-To: <1595705720.093911757@apps.rackspace.com>
Date: Sun, 26 Jul 2020 00:27:54 +0300
Message-Id: <56BAD843-DB8B-41AF-BC1A-D29BAAD23680@gmail.com>
References: <d5f74f85-7d72-40f9-a965-8335163d8cec@www.fastmail.com>
 <CFB4036D-8EEA-44B2-A909-6FD8B495267A@darbyshire-bryant.me.uk>
 <0CCA78BD-201C-4668-A013-24A3F6F4EC87@darbyshire-bryant.me.uk>
 <1595699283.358416190@apps.rackspace.com>
 <94003145-2031-454F-8F76-38C153DDFA08@darbyshire-bryant.me.uk>
 <1595705720.093911757@apps.rackspace.com>
To: "David P. Reed" <dpreed@deepplum.com>
X-Mailer: Apple Mail (2.3445.9.6)
Subject: Re: [Cake] diffserv3 vs diffserv4
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
Cc: Kevin Darbyshire-Bryant <kevin@darbyshire-bryant.me.uk>,
 Cake List <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

PiBPbiAyNSBKdWwsIDIwMjAsIGF0IDEwOjM1IHBtLCBEYXZpZCBQLiBSZWVkIDxkcHJlZWRAZGVl
cHBsdW0uY29tPiB3cm90ZToKPiAKPiBBbmQgdG8gYmUgY2xlYXIsIEFRTSAoY2FrZSwgYmVpbmcg
YW4gZXhhbXBsZSkgaXMgbm90IGFib3V0IGJhbmR3aWR0aCBhbGxvY2F0aW9uLiBJdCBkb2VzIGZv
Y3VzIG9uIGxhdGVuY3kvcXVldWVpbmctZGVsYXksIGZvciB0aGUgbW9zdCBwYXJ0LgoKQ2FrZSBp
cyBub3QgKmp1c3QqIGFuIEFRTSwgdGhvdWdoIEkgdW5kZXJzdGFuZCB5b3VyIHBvaW50LiAgSXQg
aXMgYSBxZGlzYyB3aXRoIG1hbnkgaW50ZXJ3b3ZlbiBmdW5jdGlvbnMuCgpDYWtlJ3MgRGlmZnNl
cnYgc3VwcG9ydCBpcyBuZWl0aGVyIGEgcHVyZSBwcmlvcml0eSBzY2hlbWUgbm9yIGEgcHVyZSBi
YW5kd2lkdGggYWxsb2NhdGlvbi4gIEJ5IHVzaW5nIGEgaHlicmlkIG9mIHRoZSB0d28gZm9yIGJh
bmR3aWR0aCBhbGxvY2F0aW9uLCBJIHdhcyBob3BpbmcgdG8gYXZvaWQgdGhlIG1haW4gcGl0ZmFs
bHMgdGhhdCB0aGUgc2ltcGxlIEJlbGwtaGVhZGVkIGFwcHJvYWNoZXMgcm91dGluZWx5IGVuY291
bnRlci4gIEVhY2ggdGluIGFsc28gaGFzIGl0cyBvd24gQVFNIHBhcmFtZXRlcnMsIHdoaWNoIGZl
ZWQgaW50byB0aGUgZGlzdGluY3Rpb24gYmV0d2VlbiBoaWdoLXRocm91Z2hwdXQgYW5kIGxvdy1s
YXRlbmN5IGNsYXNzZXMgb2YgdHJhZmZpYy4KClRoZXJlIGFyZSBkb3VidGxlc3Mgb3RoZXIgYXBw
cm9hY2hlcyB0aGF0IGNvdWxkIGJlIHRyaWVkLCBvZiBjb3Vyc2UuICBBbmQgdGhlcmUgbWlnaHQg
YmUgZW5kbGVzcyBkZWJhdGUgb3ZlciBleGFjdGx5IGhvdyBtYW55IHRyYWZmaWMgY2xhc3NlcyBh
cmUgYWN0dWFsbHkgbmVlZGVkOyBJIGRvbid0IHRoaW5rIGZpdmUgaXMgdGhlIHJpZ2h0IG51bWJl
ciwgYW5kIHRoZSBzeW1tZXRyeSBhcmd1bWVudCBpcyBub3QgcGVyc3Vhc2l2ZS4gIEJ1dCBjYW4g
d2UgYXQgbGVhc3QgYWdyZWUgdGhhdCBDYWtlJ3MgYXR0ZW1wdCBpcyBhIHN0ZXAgaW4gdGhlIHJp
Z2h0IGRpcmVjdGlvbj8KCiAtIEpvbmF0aGFuIE1vcnRvbgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5i
dWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2Fr
ZQo=
