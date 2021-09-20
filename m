Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 739C4410E26
	for <lists+cake@lfdr.de>; Mon, 20 Sep 2021 03:22:15 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 910DF3CB42;
	Sun, 19 Sep 2021 21:22:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1632100933;
	bh=J2W39CE/0e45uFy01fqzQVvOFJrqdqA5ga+YKoZcfDg=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XrgIuDtCi75Y66Yk5S1/6/7MoztRnKR/3KEGdtwBtmz1zdMOpsd0Nev1iYbbu9+QP
	 CWVBFR1vHdOrWB/jRaIL9+Gi5m7wFk58J5WtxX3ynhsKK+J7AxMysrdh3cfSPX5yEd
	 zqpuXMryabLkyghl98U/9/TjcWKgg0ljtnBaioTSqRWTRvfO8W2K2Ctm/zOlSQIvpr
	 YbAmJzY+0ZF3zhT6LsQTJdkbS67206CHDJ3+V4ejspgF+xi6iyM/yEbikgtPKlcIxe
	 1SVii8By3dEgHp9o+VS5FyBsGVdls/g7XcY+x75LD6osVFPEqCVzs+PzrCpHI9nEgv
	 PniyUKvR7GDUw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd2c.google.com (mail-io1-xd2c.google.com
 [IPv6:2607:f8b0:4864:20::d2c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 548E23B29D;
 Sun, 19 Sep 2021 21:22:12 -0400 (EDT)
Received: by mail-io1-xd2c.google.com with SMTP id d18so7638390iof.13;
 Sun, 19 Sep 2021 18:22:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PWRhEJ0VJIdF4n68woiNb11Bh6EIARr7Zm3hWBKuKkc=;
 b=ZVN8amqrR7hdzh/ETk018B1KSQtYyAActWla6k7yohAp3tBszxjCSA+dQLe9biHndz
 v7FA+V3n9IeozUMuCZN5Rrz3IB34S9QBNstwSgoGMEgujcPGe0DOED/LJpgCSH5FFNF/
 ba8pYBFSsQR8GBjQqnIMigGPR06kHjtrmK9poYaQQkfcEfnPCbX2780jtn/e1Y5hk9zs
 B6mqAyawCB9zXMW5kQMm9HbamRe5fyiVVmoxaJuRdpT/raqqivn9mzZeTGa/1clfFw/2
 DGhVfT7uNNq42sEl+QnAz4WbEv99WtyUNmCMGExcUBBpizT40uQ5Z098PhR8EWzUaB7M
 5tPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PWRhEJ0VJIdF4n68woiNb11Bh6EIARr7Zm3hWBKuKkc=;
 b=fXHh6qAg8jZvrcXYn1D6r3G/Wanro6WbunWyEoxbfM9JCYYdxHhw3WbslIjyyaGxQO
 QcaFiXsMyUFBpbnvLiIbHQuPvuwhbrFPP8uUsT3KfXUSjiWbflkz25LdqM/9x3q/xydc
 9MyLgx4NVy33kG026sdbi6s4xm4gIv9V+ojHFF70qj2PBmgdzkBlKKlOQ1yKb1Nt7HFh
 nrirxO3529TyLjvmwftp6v69rghVuQoj5WMiguoGMCp56JXV/gwrunH9Ev8o8GGDh63/
 qRWymRJpV9/wKnL2odQKQomU4Jhg6gZeR6gVXhRaoCaiY0YOPqpXC0YIc+4LSOLOaQOG
 L0ig==
X-Gm-Message-State: AOAM531Tdk+zjvUj6BYzYEhdZRmoqm9EQQNRfxiJNTjSar+tRhkNdzwi
 YYIl5+Zx9mBgxRQmSrvSvhuzYwu8J/6Di6G5Ov0=
X-Google-Smtp-Source: ABdhPJxQe15vmNWssbPR1E39im7/xIjKQhM5EWivJstC5Hwctd/EcAP7UcG6WiFve92ITY2Gwi/vv2PpaiH1Bkj+T6k=
X-Received: by 2002:a02:6d10:: with SMTP id m16mr17555946jac.60.1632100931581; 
 Sun, 19 Sep 2021 18:22:11 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw7ZFWRWsBK-R1See9jRCASHd1U8ZFawyDXOT8fh2pLTag@mail.gmail.com>
 <1625188609.32718319@apps.rackspace.com>
 <CAA93jw5wQ5PYL08hWcdUucUYWt-n=uKDAbF23Pp3t5u9dEDEng@mail.gmail.com>
 <CAHb6LvrjgKnfe_jaGgx7_B1VDTkZfTmP0OyTmxL9ojWoxogrsA@mail.gmail.com>
 <989de0c1-e06c-cda9-ebe6-1f33df8a4c24@candelatech.com>
 <1625773080.94974089@apps.rackspace.com>
 <FDF5C7A7-47A6-4123-A948-352C07C35F02@cs.ucla.edu>
 <CAH8sseShtJHZ1mZWu-hhKYsDLG_LC9GBpX9XRrj68yyzQLPcAg@mail.gmail.com>
 <1625859083.09751240@apps.rackspace.com>
In-Reply-To: <1625859083.09751240@apps.rackspace.com>
From: Dave Taht <dave.taht@gmail.com>
Date: Sun, 19 Sep 2021 18:21:56 -0700
Message-ID: <CAA93jw5QyH4SqKT07hP+skijfimZ0GU=AgLJtkVOQGzKrAkazg@mail.gmail.com>
To: "David P. Reed" <dpreed@deepplum.com>
Subject: Re: [Cake] [Bloat] Little's Law mea culpa,
	but not invalidating my main point
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
Cc: starlink@lists.bufferbloat.net,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Leonard Kleinrock <lk@cs.ucla.edu>, Bob McMahon <bob.mcmahon@broadcom.com>,
 Cake List <cake@lists.bufferbloat.net>, codel@lists.bufferbloat.net,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, Ben Greear <greearb@candelatech.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SSBqdXN0IHdhbnRlZCB0byBjb21tZW50IG9uIGhvdyBhd2Vzb21lIHRoaXMgdGhyZWFkIHdhcywg
YW5kIGhvdyBmZXcKcGVvcGxlIG91dHNpZGUgdGhpcyBncm91cCBkZWVwbHkgZ3JvayB3aGF0IHdh
cyBkaXNjdXNzZWQgaGVyZS4gSSB3b3VsZApzbyBsaWtlCnRvIHNvbWVob3cgY29uc3RydWN0IGFu
IGVkdWNhdGlvbmFsIFRWIHNlcmllcyBleHBsYWluaW5nICJIb3cgdGhlCkludGVybmV0IHJlYWxs
eSB3b3JrcyIgdG8gYSB3aWRlciwgYW5kIG5ldyBhdWRpZW5jZSwgY29uc2lzdGluZyBvZgphbmlt
YXRpb25zLCBhbmVjZG90ZXMsCmFuZCBpbnRlcnZpZXdzIHdpdGggdGhlIGtleSBmaWd1cmVzIG9m
IGl0cyBldm9sdXRpb24uCgpXaGlsZSBJIGRlZXBseSB1bmRlcnN0b29kIExlbiBLbGVpbnJvY2sn
cyB3b3JrIGluIHRoZSBwZXJpb2QKMjAxMS0yMDE1LCBhbmQgdHJpZWQgdG8gcGFzcyBvbiBhbmFs
b2dpZXMgYW5kIGludHVpdGlvbiB3aXRob3V0IHVzaW5nCnRoZSBtYXRoIHNpbmNlLCBpbnNwaXJl
ZCBieSB2YW4gamFjb2Jzb24ncwphbmFsb2dpZXMgYW5kIFJhZGlhIFBlcmxtYW4ncyBwb2V0cnks
IGl0J3MgaGFyZCBmb3IgbWUgbm93IHRvIGZvbGxvdwp0aGUgYXJndW1lbnQuIFF1ZXVlIHRoZW9y
eSBpbiBwYXJ0aWN1bGFyLCBpcyBub3Qgd2VsbCBrbm93biBvciB0YXVnaHQKYW55bW9yZSwgZGVz
cGl0ZSBpdHMgb2J2aW91cyBhcHBsaWNhdGlvbnMgdG8gdGhpbmdzIGxpa2UgdGhlIENvdmlkCmNy
aXNpcy4KCkJ1dCB0aGF0IHdvdWxkIGJlIGp1c3Qgb25lIHRoaW5nISBUaGUgZW5kIHRvIGVuZCBh
cmd1bWVudCwgdGhlIHNpZGUKZWZmZWN0cyBvZiBzcGl0dGluZyBwb3N0c2NyaXB0IGludG8gYSBs
ZWdvIHJvYm90LCB3aGF0IGFjdHVhbGx5CmhhcHBlbnMgZHVyaW5nIGEgd2ViIHBhZ2UgbG9hZCwg
aG93IGEgY3B1IGFjdHVhbGx5IHdvcmtzLCBhcmUgYWxsCnRoaW5ncyB0aGF0IGFyZSBpbmNyZWFz
aW5nbHkgbG9zdCBpbiBtdWx0aXBsZSBtZW50YWwgbW9kZWxzLCBhbmQgaW4gbXkKbWluZCBtYW55
IGNvdWxkIGJlIHRhdWdodCBpbiBraW5kZXJnYXJkZW4sIGlmIHdlIHdvcmtlZCBhdCBleHBsYWlu
aW5nCml0IGhhcmQgZW5vdWdoLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApo
dHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
