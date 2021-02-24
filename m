Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 998653243E3
	for <lists+cake@lfdr.de>; Wed, 24 Feb 2021 19:43:36 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id D66A63CB49;
	Wed, 24 Feb 2021 13:43:29 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1614192209;
	bh=9iaIS8CM6yCbWQth4Ip5AaB7T37PhPG5D409sQxS2zw=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=iQ2mdkTeBBR9+kmXYdLYCPmO6n+yWrYdHaC+3yTNGV5r+Y8PA00t4Ygac+OFBlfUC
	 0HQsDOw6Jp/eZlRiyZ9Ac8h81Cc0xV6j2LmfzF2oBNTy/nty2+0Nlx/YVQqtQwYr3D
	 vm/YI9ZubdQpPO0eBk9dNZ/+WmCMSycSS4z8MInsdoy0ImlzqmcGuNb6pTC4Zk8woG
	 VhpkyiFifnD5EPj0kJDifv6kzQQMc4LAs3ukA0dyNs4PNycFKIZVCKQFPhMMcOKmP6
	 MgRCnQsBZqR8Bk6+47eMMT3XRz4DlHMpyZroInpBwGNpSumRhDTVXIG4+XiiTdflbL
	 EZH2LgX7NhYfQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com
 [IPv6:2a00:1450:4864:20::22c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 0F92C3B29D;
 Wed, 24 Feb 2021 13:43:28 -0500 (EST)
Received: by mail-lj1-x22c.google.com with SMTP id h4so3403553ljl.0;
 Wed, 24 Feb 2021 10:43:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=+uTe6Y5YHUj9+2To6VwgnUAmxlPITA1JMA8VjfbtCi4=;
 b=IRqR9NXOtiyy1K1uCF8zJoleYlzn1ajRq8BWkIFQ9zLciytuWw7EP1MmnLwA5klGB+
 4NwLr6SLSOddAOZEAaaV2Tz7O9gcVGx7TS8xKe9K8h6Ig4TmIs/eKGikAP8GmTgEiLMD
 Uqc3iE+4xjokNGlUISE7hjud9mUl7yitdjHOQvImL9RlTX2bSgobcl2L+T9Md1+/xmyS
 Ycko28aauyG3fp9hvDBOzUq043wa1SX3T80l5egSy3eHAT1HGhPP1aAEdcVrSSxFRxbG
 3Sl5C/82B95m3M6/SM8w1E5grJrphCrVe/QCjeZBCko9zQZ13GvwcDstrsu+oRdGdeOz
 AfSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=+uTe6Y5YHUj9+2To6VwgnUAmxlPITA1JMA8VjfbtCi4=;
 b=XgBC6xgSSj9MGSCcHeGWl0LZSEPBcY/W/qDffD4ZWdr0WOxeHCH5BE7/VvfH5v1pej
 FWTwnNRQcqsgYkP1qsB1BXxFa4krujoZTQ0JQ9YwRdO13QrYqCuXuHhhSiTeXXeotOjZ
 ucrVLu9MFU4WY42gnQXKM5VwvEY8lrFJzmVva81ETU03W7nSZIP8NksdRZUbYg/MEUkd
 VRDcSNe5RAUNu4+EQa6ZVU1T3+VLYHvMSkZFeHqtr8NnhpEyALQMKYTJt59bGPgZUEL+
 YsQC+qtP2/R+Ks5qe7uvAVj5ySf6P+pO/Tt6R6ialWXM7Akx+5Qk6pscrKFvZqMxTZgT
 JXng==
X-Gm-Message-State: AOAM533aE7lIjf9YN+1IsIkp2L5kKVGzDu2VjtKUlbUmKzYqDNAKwY0P
 znhtHjOkNXYS6+b236cfylw=
X-Google-Smtp-Source: ABdhPJzZnjtBG95biUMOqaBzaRgZ8J/5jgIYiY3tDPiEKH8gsSPB/EFKlEGmy3GSU7uluDWQQ/ai9g==
X-Received: by 2002:a05:651c:39d:: with SMTP id
 e29mr10784374ljp.321.1614192206853; 
 Wed, 24 Feb 2021 10:43:26 -0800 (PST)
Received: from jonathartonsmbp.lan (176-93-29-60.bb.dnainternet.fi.
 [176.93.29.60])
 by smtp.gmail.com with ESMTPSA id a23sm651632lfl.284.2021.02.24.10.43.25
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 24 Feb 2021 10:43:26 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.7\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <2f30c201fce345658df9f2a5090745cf@telenor.no>
Date: Wed, 24 Feb 2021 20:43:25 +0200
Message-Id: <DBC65A9C-A0F9-441F-BAFA-A2114286C5CA@gmail.com>
References: <874ki24ref.wl-jch@irif.fr>
 <CAA93jw5GdseVR+mUwYKg53ToRdKrU-v-ZLHaKnbDZ1Y65DLBDg@mail.gmail.com>
 <1e41ddf7-cd08-4fec-b31a-3021f8111dc6@www.fastmail.com>
 <2f30c201fce345658df9f2a5090745cf@telenor.no>
To: Taraldsen Erik <erik.taraldsen@telenor.no>
X-Mailer: Apple Mail (2.3445.9.7)
Subject: Re: [Cake] [Make-wifi-fast] [Bloat] Fwd: [Galene] Dave on
 bufferbloat and jitter at 8pm CET	Tuesday 23
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
Cc: Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 =?utf-8?Q?Toke_H=C3=B8iland-J=C3=B8rgensen_via_Cake?=
 <cake@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

PiBPbiAyNCBGZWIsIDIwMjEsIGF0IDU6MTkgcG0sIFRhcmFsZHNlbiBFcmlrIDxlcmlrLnRhcmFs
ZHNlbkB0ZWxlbm9yLm5vPiB3cm90ZToKPiAKPiBEbyB5b3UgaGF2ZSBhIHN1YnNjcmlwdGlvbiB3
aXRoIHJhdGUgbGltaXRhdGlvbnM/ICBUaGUgUEdXIChyb3V0ZXIgd2hpY2ggZW5mb3JjZXMgdGhl
IGxpbWl0KSBpcyBhIGxvdCBtb3JlIGxhdGVuY3kgZnJpZW5kbHkgdGhhbiBpZiB5b3UgYXJlIHJh
ZGlvIGxpbWl0ZWQuICBTbyBpdCBtYXkgYmUgYmVuZWZpY2lhbCB0byBoYXZlIGEgInNsb3ciIHN1
YnNjcmlwdGlvbiByYXRoZXIgdGhhbiAiZnJlZSBzcGVlZCIgdGhlbiBpdCBjb21lcyB0byBsYXRl
bmN5LiAgU2xvdyBtZWFuaW5nIGxvd2VyIHN1YnNjcnB0aW9uIHJhdGUgdGhhbiByYWRpbyByYXRl
LgoKVGhpcyBpcyBhY3R1YWxseSBzb21ldGhpbmcgSSd2ZSBub3RpY2VkIGluIEZpbmxhbmQgd2l0
aCBETkEuICBUaGUgcHJvdmlzaW9uaW5nIHNoYXBlciB0aGV5IHVzZSBmb3IgdGhlICJwb3ZlcnR5
IHRhcmlmZiIgaXMgcXVpdGUgd2VsbCBkZWJsb2F0ZWQgKHdoaWNoIHdhcyB2ZXJ5IG11Y2ggbm90
IHRoZSBjYXNlIHNvbWUgeWVhcnMgYWdvKS4gIEhvd2V2ZXIsIHRoZXJlJ3Mgbm8gdGFyaWZmIGF0
IGFueSBjb252ZW5pZW50IGxldmVsIGJldHdlZW4gMU1icHMgKHBvdmVydHkgdGFyaWZmKSBhbmQg
NTBNYnBzIChwcm9iYWJseSByYWRpbyBsaW1pdGVkIG9uIGEgc2luZ2xlIGNhcnJpZXIpLgoKIC0g
Sm9uYXRoYW4gTW9ydG9uCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBz
Oi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
