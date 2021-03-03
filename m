Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id B5ED432B962
	for <lists+cake@lfdr.de>; Wed,  3 Mar 2021 18:10:02 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 6A96F3CB38;
	Wed,  3 Mar 2021 12:10:01 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1614791401;
	bh=txmjyRpnInGyhUsP15xJrlti7gmQE5z4sT9+3VeoBWc=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=CBNjTCFJZ4Vfl982qZtw4POrbwdDbkm5c1j2Uosu22YqM2P9lfe3sqdtTRtCOeO6H
	 IOY8e/qPhDtsTJ21gnRIe0c4bIWtjVN44PPIdfh3/qznzTF/7nkEneuUxw7EgL4cOJ
	 1XfgFDUZucxVU4LEh71yalxqk+J/1JGj7QZbUa5hE5D5XBx5EgNJg1568JwzX/lS++
	 +NBXgiYVJ54knkGg8PJi9+pwD8FlRlYE8AJmj3mFCwLfhRXGxZ7xPu8xYt8an8dIiq
	 Cgo+xRIHh6yCW+nJ8sZIbbkpzh1VcL/0D5TzjdCqVsRD8ebJx48UjuFeiHLrTpWikg
	 elxIx21IP7GvA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 0E4573B2A4;
 Wed,  3 Mar 2021 12:09:58 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
 t=1614791397; bh=++Tnmutyxl4dQwzShC1aw6C/7alvlKMPyckrIc2sAWY=;
 h=From:To:Subject:In-Reply-To:References:Date:From;
 b=FVCLFVvOZQH6tCejFDu0QC7rJ8mDhfrXWdQTkevnnqkVT4E+Bub9MBAlcLJt11582
 TXWy8K+rTa4Kufmp+LIZ73jRp/sM3loiSBTgAeewSpipvpH5B/3WkFa2eumWFjHS/J
 1s01wfZ1Zd1MTYJ/knWaIx8CyY1ptOPJjOrzt/8vy/b6h48h06+fICM7jWifq5OAFw
 RRUhsiDVkHdv/YaH4sVuvUohZ9XNUEIQy8ZCGXuO3ECsHynooBf8Xw/DPw57YaatjQ
 el/GUrt7kFRO6PiW3nuQkRohrk85ZCi34rPvoPpk83K2MP/o+to7nDJUif/tQ85Jp1
 RPQjEhEtCb/4g==
To: Dave Taht <dave.taht@gmail.com>, Cake List <cake@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>
In-Reply-To: <CAA93jw67X7u5pS0a-ERpWvpenwmgvWvQ3KV9e2Pzj75iuOLPgQ@mail.gmail.com>
References: <CAA93jw67X7u5pS0a-ERpWvpenwmgvWvQ3KV9e2Pzj75iuOLPgQ@mail.gmail.com>
Date: Wed, 03 Mar 2021 18:09:56 +0100
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87a6rkf9jv.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] [Cerowrt-devel] merlin gains cake support
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RGF2ZSBUYWh0IDxkYXZlLnRhaHRAZ21haWwuY29tPiB3cml0ZXM6Cgo+IGh0dHBzOi8vZ2l0aHVi
LmNvbS9kdGFodC90Yy1hZHYvaXNzdWVzLzI3Cj4KPiBJIGRvbid0IGhhdmUgYW55IG9mIHRoZSBo
YXJkd2FyZSBzdXBwb3J0ZWQgYnkgdGhpcyBmaXJtd2FyZSBseWluZwo+IGFyb3VuZCBoYW5keS4u
LiBjYW4gYW55b25lIHRlc3Q/CgpJIGJlbGlldmUgdGhlIG9yaWdpbmFsIHJlcG9ydGVkIGFscmVh
ZHkgdGVzdGVkIGFuZCBjb25maXJtZWQgdGhlIGZpeCwKYWN0dWFsbHkuIEkgaGF2ZSBhIHBhdGNo
IHBlbmRpbmcgZm9yIHVwc3RyZWFtIGlwcm91dGUyIHdoaWNoIHNob3VsZCBzaG93CnVwIG9uIG5l
dGRldiBhcyBzb29uIGFzIHZnZXIgdW5jbG9ncy4uLgoKLVRva2UKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0
cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8v
Y2FrZQo=
