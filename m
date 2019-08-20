Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id B66B496876
	for <lists+cake@lfdr.de>; Tue, 20 Aug 2019 20:19:22 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id ACD103CB38;
	Tue, 20 Aug 2019 14:19:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1566325161;
	bh=ZqZEaoeHGnbf7IZ5iNuKaHXhKoR1VCUeQhuTS6xt/is=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fV3lBTnYyrGqtGQb0VFFiDdh56kY5BEPTPmiFNv7dBSyXI5hE5+Re+NmJmbUKV/n4
	 wOWF5jA3n3F3gXvEAn2wkAycmd409P6weuj9iBKxsSGha9MqMyoODUFLwP1avQbnI1
	 l/fCK1+50OV5TkgK31ZZdN1V8KG8Xvj3wXNgOPOKSibQVgIVcQxS5ePZb7GhX5TP5t
	 LruSFp3R7WiiAab5ERnngqIDmLO1qzW43Z0O/FV7AFM4i0n0d0NHDDeC5cvWNIPCu6
	 Er5SmZ5kD/0oPRwH6EVsLKFVTsV606EQcVGZDCRpvEIZ4WPyI9E6kxQAj/7DshuM0X
	 ODcNiJUln0qkQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from webmail.newmedia-net.de (smtps.newmedia-net.de
 [IPv6:2a05:a1c0:0:de::167])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 4B1833B2A4
 for <cake@lists.bufferbloat.net>; Tue, 20 Aug 2019 14:19:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=newmedia-net.de; s=mikd; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject;
 bh=oFQhW8hv+T1FuMsT1DQyH8/X7bjmXEkWbD54vCXSIUs=; 
 b=w0uE4UU/sQFZAKFpTQR1SHn4a4aZhiccZa+xqsfk+AJyJZQk/UQAttbq1lmXNmWs2Bg9S/oUo2hbES37ExcmEVhN34fVvdNR4ngUq584YSKWm/B7GDiMNL3JOgm0h8utbWR4trh9woYEo0LQFPCNBCW9yoiVIgC+MRaAhqlHv24=;
To: Dave Taht <dave.taht@gmail.com>, Cake List <cake@lists.bufferbloat.net>
References: <CAA93jw4FDjYjxxStyzMu8eCz_6Ezcumg-iZaYeM3kBZ5da8MBQ@mail.gmail.com>
From: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Message-ID: <7165ee2c-df04-c7ab-ca5c-cdf5aa14ed54@newmedia-net.de>
Date: Tue, 20 Aug 2019 20:18:17 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAA93jw4FDjYjxxStyzMu8eCz_6Ezcumg-iZaYeM3kBZ5da8MBQ@mail.gmail.com>
X-Received: from [2003:c9:3f25:1300:e947:ab73:1d88:4792]
 by webmail.newmedia-net.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.72) (envelope-from <s.gottschall@newmedia-net.de>)
 id 1i08j8-0000aK-K8; Tue, 20 Aug 2019 20:19:26 +0200
Subject: Re: [Cake] cake in dd-wrt
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

dG8gbWFrZSBpdCBzaG9ydC4gaSBhZGRlZCBub3cgZnFfY29kZWxfZmFzdCB0byBkZC13cnQgdG9v
LgoKQW0gMTguMDguMjAxOSB1bSAxODozMyBzY2hyaWViIERhdmUgVGFodDoKPiBodHRwczovL3N2
bi5kZC13cnQuY29tL3RpY2tldC81Nzk2Cj4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9h
dC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
