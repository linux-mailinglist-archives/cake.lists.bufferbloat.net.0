Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 525CA438AA1
	for <lists+cake@lfdr.de>; Sun, 24 Oct 2021 18:24:46 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 6D27B3CB39;
	Sun, 24 Oct 2021 12:24:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1635092684;
	bh=5Movl+QFi1EOVkkgKrury4Xi2aVCY+AQdcKuNJkHjEI=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=nKq25GDSsweuufKRxy7l8eIxvSKHOQA+XG6lgnUsUobSU38Qz5GWtvFBkTAL9/0jn
	 waujKSmROGj7xFupNgH2susjm3hoAntLkWNLCOOnOJFnZ0OOslpPArZbI5ywPV13E2
	 KORXXsuKGREk4NaDoh8ctiTjtzZn7Gv1JiSmKqxH/ElbJ5ZWL4GUmzbC11BH8ZMwdB
	 3uCJjkXSZPbqoOipSrFJDvmKl08Bei2ClEglrscKTuCQUzUavUVbXReRgPGhOwEwwt
	 VnXv4OyjSxCtPhOuORgOIqiUzWl/MD8lzoG105hO7yON0zJOj08C8jE34vKG0BBKv/
	 8gfvCeLUnmi2g==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x129.google.com (mail-il1-x129.google.com
 [IPv6:2607:f8b0:4864:20::129])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id EA8E03CB35;
 Sun, 24 Oct 2021 12:24:43 -0400 (EDT)
Received: by mail-il1-x129.google.com with SMTP id l7so10193014iln.8;
 Sun, 24 Oct 2021 09:24:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to:cc
 :content-transfer-encoding;
 bh=X13HKkF7G2MplNzYU+mddcPUw9XBfmtWXY8cUUYlxOY=;
 b=dCLDssyEqmbbtFHgyrZCHV/c1wtt8FDy1Wkmcdg0gqquhX4GeJ/bWh+Wx7bcKdXGNt
 dkR7MYH9c99ZzJQjFlMYIGsNqc//1PzV0DVDrZasLK5OzgQ7qEjiRRL6r8dkCYunj6PI
 NxWmg9HNjx+VYfY08OXk1nbFM9ITS/FtiAY895TU0KRvAgq16e9HnBoxd0KdHrOuch0S
 z3hVJLgvy8CMGzTxuFByxHQuu3ufauo7o7nQAj0da0gsvi1XJq46u9YPl4WWxnNALZf7
 0x+aTBwy7FV+aq6ICnyRPQ3/h5v0K8VetzvzImYLKiZU2hUO5vaFnSdL9cbrIzYPyVF7
 dT0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
 :content-transfer-encoding;
 bh=X13HKkF7G2MplNzYU+mddcPUw9XBfmtWXY8cUUYlxOY=;
 b=LlvFwE8Vu1+KU9JHnP+z4yRMExzzC6oF+JTU/jDWLflsHOjRwHHRwLcXQEwG3oo6B8
 hhXEra5l5JIXKRDieHzgKGzPIBlFJ0vTJrLapkQc35h3VXu7MRVCB9yEjatDNBLbdOUD
 MUw+6Naz5ZA3qhsYZI+hnViLikYw1KjGAf+uWi7UacJKbD5bE5r1fuveRo0FMhg3Gnj/
 gEj9d9LEsUHsArZjZyvSPhFiqf/CiIfDeSPilx7ZRnpdj5wuHYiJqjINOVCZFNxtlm7S
 vs311eSF+jdrLRG8A90iqgQOplTjUl9mzZOhbre0S5vLeHKyvT0OOi5Sfu3m3wzLilN/
 Qcgg==
X-Gm-Message-State: AOAM530sOSmLPwRJ+71v6hHpnSE4NAN2eRvm7GysQsM4V2K2+omPCZpH
 G9krqU90X9wDmQJEG8crbuhBaBVv4MaAMEluY8ctRLJPiqA=
X-Google-Smtp-Source: ABdhPJzP0ANYDUG4PxapZcFJhlqcp3BLPEAPQquoYP71kb02zPEVFfpMntK3rd9LxIWFKiyv3fxF9q9tpgvRot6sXR8=
X-Received: by 2002:a05:6e02:1d8b:: with SMTP id
 h11mr2028726ila.274.1635092683004; 
 Sun, 24 Oct 2021 09:24:43 -0700 (PDT)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Sun, 24 Oct 2021 09:24:30 -0700
Message-ID: <CAA93jw4hb7NgkHQrV=nVsg=4DevBewLQLnTE6S-aUjXaHtzY_A@mail.gmail.com>
To: bloat <bloat@lists.bufferbloat.net>, 
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>, 
 Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] the panda flow-dissector
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
Cc: Tom Herbert <tom@herbertland.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

VGhlIGZsb3ctZGlzc2VjdG9yIGluIGxpbnV4IGlzIHRoZSB1bnN1bmcgaGVybyBvZiBvdXIgZnEr
YXFtIHdvcmxkLgpJdCdzIGFsc28gaGVhdmlseSB1c2VkIGZvciByZWNlaXZlIHBhY2tldCBzdGVl
cmluZyAodG8gc2hpZnQgYSBmbG93IHRvCmFub3RoZXIgY29yZSkgYW5kIGluIHRjLWZsb3dlciwg
YW5kIGNhbiBkZWVwbHkgaW5zcGVjdCBhIHBhY2tldCB0bwpmaW5kIHRoZSByZWFsIDUgdHVwbGUs
IGFtb25nIG90aGVyIHRoaW5ncy4gV2UgYXJlIHZlcnkgdXNlZCB0bywgaW4gdGhlCmxpbnV4IHdv
cmxkLCB0byBoYXZpbmcgdGhhdCBoYXNoIGFsd2F5cyBhdmFpbGFibGUuCgpTbyBmYXIgYXMgSSBr
bm93IEJTRCdzIGVxdWl2YWxlbnQgaXMgY29uc2lkZXJhYmx5IHdlYWtlciwgYXMgYXJlIHRoZQpv
ZmZsb2FkcyBwZW9wbGUgYXJlIGF0dGVtcHRpbmcgaW4gcDQsIGFuZCBpbiBxdWFsY29tbSdzIG5z
cyBoYXJkd2FyZQpvZmZsb2Fkcy4gQW55d2F5LCBhcyBpdCBpcyBsYXJnZSwgYW5kIGZyYWdpbGUg
Y29kZSwKdGhlcmUgaXMgbm93IGEgKGJzZCAyLWNsYXVzZSkgcGFuZGEgcGFja2V0IHBhcnNlciBn
ZW5lcmF0b3Igb3ZlciBoZXJlOgpodHRwczovL2dpdGh1Yi5jb20vcGFuZGEtbmV0L3BhbmRhCgou
Li4gdGhhdCBjb3VsZCBwb3NzaWJseSBiZSByZXRhcmdldHRlZCBhdCB0aG9zZSBlbnZpcm9ubWVu
dHMgYXMgd2VsbAphcyBvbmUgZGF5IHJlcGxhY2UgYW5kIHVuaWZ5IHRoZSBleGlzdGluZyBmbG93
IGRpc3NlY3RvciBjb2Rlcy4KClRvbSBIZXJiZXJ0IHRhbGtzIHRvIGl0IGluIGRldGFpbCBoZXJl
LiBTZWUgdGhlIHNwYWdoZXR0aSBmb3Igd2h5IHRoaXMKaXMgbmVlZGVkIGluIG1vcmUgcGxhY2Vz
LgoKaHR0cHM6Ly93d3cueW91dHViZS5jb20vd2F0Y2g/dj16Vm5tVkRTRW9YYwoKCgoKLS0gCkZp
eGluZyBTdGFybGluaydzIExhdGVuY2llczogaHR0cHM6Ly93d3cueW91dHViZS5jb20vd2F0Y2g/
dj1jOWdMbzZYcndndwoKRGF2ZSBUw6RodCBDRU8sIFRla0xpYnJlLCBMTEMKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2Fr
ZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlz
dGluZm8vY2FrZQo=
