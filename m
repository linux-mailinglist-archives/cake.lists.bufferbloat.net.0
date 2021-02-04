Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 640FC30E828
	for <lists+cake@lfdr.de>; Thu,  4 Feb 2021 01:03:47 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 57BC43CB38;
	Wed,  3 Feb 2021 19:03:46 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1612397026;
	bh=mAvqREvBnhc979+ZSupMUdpMBtfmrlJ3WBPvGnxU5zg=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gigThHXigIMUVQ/ALvabTodRxyCxsuoXtK4AnmY5DTWJ0Btbu173zCz2NWxCrFZpw
	 5L4f613RWuqRI6W7f/5yOa2izq+PMoTca/uXXe0tC8ximHdlmR+uUVkNRJsnwa56gu
	 l7kUl5NFA5oXrY8Fq5YkX1bvGGJpyWfRGV8PaTXxSkLOYrJqefb1eSDal+WFp8fZjb
	 RPqKpk8+1tjizDsoHWH/7v11bm9z/Qab4ctpShG6e0xGEyAsr0VaM44IU1XtLa1gZT
	 5x4cJpUBLiE/KBypDfQqg6Md+N4avmaH1aT6m9bjZ/0eDSo1/WmurgLohFwKB86Jey
	 UGXbSXXa1ThtA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com
 [IPv6:2a00:1450:4864:20::230])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id C0EA13B29E
 for <cake@lists.bufferbloat.net>; Wed,  3 Feb 2021 19:03:44 -0500 (EST)
Received: by mail-lj1-x230.google.com with SMTP id s18so1223514ljg.7
 for <cake@lists.bufferbloat.net>; Wed, 03 Feb 2021 16:03:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=EFblWDRf2BsZXvY6HYS4K//7WtykAdHB0ViccXPajlk=;
 b=VldkVjTJj6vy0FFCubI6LfWHkAz7pmDC4vO+R/hbF3bmlEBv22Ai0r7zKD4tuLCRkN
 sjJ5tD9DmWW4vV81wju7E0gR0sud4BMsY/DUmMzS9ixxLHfSGOpjQRVYEzAMHiB4bMKl
 DJYfGO1jnoY401HREJp0ym/K2zWLsSGwgAsUHPNKqnrhOohUggEkjdqi0e183kGatFj+
 R8Mn43o3LsteDySOyXq431ZjJtzPZvlU9XhBtf6QTW7qbARrEixXupowY57EwpJ+pe/P
 GhuXn5EejEcDpGrk/PS8pOrPNN/4iSJxBINancgyeXe/+mwweMsL6+0uxSmq0XusHbiK
 u2xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=EFblWDRf2BsZXvY6HYS4K//7WtykAdHB0ViccXPajlk=;
 b=bkHAuZIG/HV0lCNvIpu2Mz5IfBDCLFKNAzR6QBDKYgnRjhmrsgFo8qN7sPnHENpw3R
 sV2CQZzlAdRm4K12rnNGjbYmHxfJYced3BuDisU35siQeSHedIOaCMkvOHdsSSpFCPqY
 XwS+qceB30zV4La5ASMrIAhRrKTeWS8FWFI6toy9fiHu2aeUFpBIKkjuVkHDwQufIdzZ
 ACv3ezdMvH4LdrhwNwETgEB9FRXJB4ZfgWzdlr7ajaW0EmT6/hNekYrLFeicT3oeiV3P
 kMCJLyeexsXp+orgd5v1Q/Bmiyk3WSZca3IqRcbvZtpnKOmdKdQ+0mhaDkKKWZnBc5ei
 SD7Q==
X-Gm-Message-State: AOAM532wyPW2YJvmK7oF0LISfsFLW+uk0MmTDX88ynS+czWffWn5DIb3
 ex0eu8hEQdpJTPqlniLRO0HW3yVcmQQ=
X-Google-Smtp-Source: ABdhPJzGuN/zxyolJyZrTzjDRf6VUtbjk1FmVlhSrtHwpTCKnt0QudJsHkoUnxDSEeKqO9G10Pjj6w==
X-Received: by 2002:a2e:a48a:: with SMTP id h10mr3108082lji.422.1612397023604; 
 Wed, 03 Feb 2021 16:03:43 -0800 (PST)
Received: from jonathartonsmbp.lan (37-136-137-205.rev.dnainternet.fi.
 [37.136.137.205])
 by smtp.gmail.com with ESMTPSA id d24sm387282lfc.225.2021.02.03.16.03.42
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 03 Feb 2021 16:03:43 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.7\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <nycvar.QRO.7.76.6.2102031317110.10981@qynat-yncgbc>
Date: Thu, 4 Feb 2021 02:03:41 +0200
Message-Id: <91BCCD0A-BE88-49A8-AEE0-960A1B363A9D@gmail.com>
References: <nycvar.QRO.7.76.6.2102031317110.10981@qynat-yncgbc>
To: David Lang <david@lang.hm>
X-Mailer: Apple Mail (2.3445.9.7)
Subject: Re: [Cake] bringing up a new router/connection
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
Cc: cake@lists.bufferbloat.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

PiBPbiAzIEZlYiwgMjAyMSwgYXQgMTE6MjQgcG0sIERhdmlkIExhbmcgPGRhdmlkQGxhbmcuaG0+
IHdyb3RlOgo+IAo+IHdoZW4gcGx1Z2dlZCBkaXJlY3RseSBpbnRvIHRoZSBJU1Agcm91dGVyLCBJ
IGFtIGdldHRpbmcgdGhlIGFkdmVydGlzZWQgc3BlZWRzLCB3aGVuIGdvaW5nIHRocm91Z2ggdGhl
IGMyNjAwIEkgdG9wIG91dCBhdCAyMDAtMzAwTWIgZG93bmxvYWQgYW5kIDEwLTE1bWIgdXBsb2Fk
CgpUaGF0IHNvdW5kcyBhYm91dCByaWdodCBmb3IgYSBjb25zdW1lciBDUEUgcm91dGVyLiAgSSBi
ZWxpZXZlIHRoZXJlIGlzIHVzdWFsbHkgYSBoYXJkd2FyZSBib3R0bGVuZWNrIGJldHdlZW4gdGhl
IFNvQyBhbmQgdGhlIEV0aGVybmV0IGNvbXBsZXggdGhhdCBpcyBzaWduaWZpY2FudGx5IG5hcnJv
d2VyIHRoYW4gdGhlIEV0aGVybmV0IHBvcnRzIGFuZCBzd2l0Y2ggZmFicmljLiAgT25jZSB0aGUg
ZG93bnN0cmVhbSBnZXRzIHNhdHVyYXRlZCB0aGVyZSBpcyBhbHNvIG5vIHJvb20gZm9yIHVwc3Ry
ZWFtIHRyYWZmaWMuCgpZb3UgY291bGQgc2V0IGl0IHVwIGZvciAxMDBNYml0IGRvd24sIDI1TWJp
dCB1cCB1c2luZyBDYWtlLCBhbmQgc2VlIGhvdyB0aGF0IHdvcmtzLiAgSXQnbGwgYmUgYSBtYWpv
ciBpbXByb3ZlbWVudCBvdmVyIDgvMSBEU0wsIGV2ZW4gaWYgaXQgaXNuJ3QgdXNpbmcgdGhlIGZ1
bGwgYWR2ZXJ0aXNlZCBjYXBhY2l0eSBvZiB0aGUgY2FibGUuCgpPbmUgZGV2aWNlIHRoYXQgc2hv
dWxkIGJlIGFibGUgdG8ga2VlcCB1cCBpcyBhIFJhc3BiZXJyeSBQaSA0IChub3QgdGhlIGVhcmxp
ZXIgdmVyc2lvbnMpIHN1cHBsZW1lbnRlZCB3aXRoIGEgVVNCMy1hdHRhY2hlZCBHaWdFIGRvbmds
ZS4gIFBldGUgSGVpc3QgaGFzIGVzdGFibGlzaGVkIHRoYXQgaXQgY2FuIHN1c3RhaW4gNjAwTWJp
dCB0aHJvdWdoIENha2Ugd2l0aG91dCBtdWNoIENQVSBsb2FkIG9yIGFkZGVkIGxhdGVuY3kuICBB
Ym92ZSB0aGF0IGxldmVsIHRoZSBjaGFyYWN0ZXJpc3RpY3MgZG8gZGVncmFkZSBhIGJpdC4KCiAt
IEpvbmF0aGFuIE1vcnRvbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0
cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
