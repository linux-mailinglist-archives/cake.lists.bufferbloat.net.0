Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A33295E20
	for <lists+cake@lfdr.de>; Tue, 20 Aug 2019 14:10:03 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id B06703CB38;
	Tue, 20 Aug 2019 08:10:01 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1566303001;
	bh=vFtnKHqckWnwUyHtMablnOUP00ewP5kYUgwQfz+Fqe4=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NCk/0bYeK8W439lsCt/54WQeum/wMhgRtyeq2aH0O6rdWC86Rm2r6HQNHVxwmyBpg
	 gbePcZ+ysjmf4bv+qth7i+TB5G4Ahmh0EmQGgoCNLTe4OrFxCWr1bxPQVfei/fdiOM
	 LZNap1Q4XqAZeDD5sSZPdUPYQAGTC1IRDIt/cY8fsz/K9F6l94yuj9yJmOzrHoEjTF
	 VpsMGF856mHNXhNwYJimUMv1sojz3DdlNVLgolXuGNJMP+PSzvZnTYqoJcqAZO4ifM
	 MDUPka7k/vzvRBdoZ8O1hWdO7gk8u61rrD2LUi+LyaDXYqGFxVn/ioW5YWneQiQA9t
	 H+TYyScQYBPug==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from webmail.newmedia-net.de (smtps.newmedia-net.de
 [IPv6:2a05:a1c0:0:de::167])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 232AA3B2A4
 for <cake@lists.bufferbloat.net>; Tue, 20 Aug 2019 08:10:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=newmedia-net.de; s=mikd; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject;
 bh=zx7OXPzxbcZVBAcuOg8eGNoOFhmsuthzs19Q5RH6rfw=; 
 b=fpD6NXP/3uLnGiZqkSsHhc5l4nGXwwYmbi+mWhgB2nCxvkpSY93Z/nFwAsnkGikz63cFPghHTK2Q6SaYR/FOC/OURbGcLnNHIOyAg/kFjUcb4YO8lnC57px7hTo6WB9+lsZwzB9vLRjjDQD1K114rZ9n6m4fJPshUllfuzQICJ4=;
To: Dave Taht <dave.taht@gmail.com>, Cake List <cake@lists.bufferbloat.net>
References: <CAA93jw4FDjYjxxStyzMu8eCz_6Ezcumg-iZaYeM3kBZ5da8MBQ@mail.gmail.com>
From: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Message-ID: <fc64c772-d85c-deba-a0e4-4e590cfb76ee@newmedia-net.de>
Date: Tue, 20 Aug 2019 14:08:58 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAA93jw4FDjYjxxStyzMu8eCz_6Ezcumg-iZaYeM3kBZ5da8MBQ@mail.gmail.com>
X-Received: from [212.111.244.1] (helo=[172.29.0.186])
 by webmail.newmedia-net.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.72) (envelope-from <s.gottschall@newmedia-net.de>)
 id 1i02xh-0000hK-PD; Tue, 20 Aug 2019 14:10:05 +0200
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

Oi0pIGknbSBmb2xsb3dpbmcgdGhpcyBsaXN0IGFuZCB5ZXMgd2UgYXJlIHdvcmtpbmcgb24gYnJp
bmdpbmcgY2FrZSBpbiA6LSkKaXMgdGhlcmUgYW55IHF1ZXN0aW9uIGJlaGluZCB0aGlzIGxpbmsg
ZnJvbSB5b3VyIHNpZGU/CgpTZWJhc3RpYW4KCkFtIDE4LjA4LjIwMTkgdW0gMTg6MzMgc2Nocmll
YiBEYXZlIFRhaHQ6Cj4gaHR0cHM6Ly9zdm4uZGQtd3J0LmNvbS90aWNrZXQvNTc5Ngo+Cl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBs
aXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQu
bmV0L2xpc3RpbmZvL2Nha2UK
