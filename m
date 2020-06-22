Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id B390B20378B
	for <lists+cake@lfdr.de>; Mon, 22 Jun 2020 15:11:18 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 1F9623CB42;
	Mon, 22 Jun 2020 09:11:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1592831477;
	bh=tP8qT7fiHf8EsqDNWAKOQcE5Hmr2qb5DBjuT7+Se9HI=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=KKFeEKwABZMf6NUx42HgbLYHhiTawoco7YwQowZlq8gLP5ryAjaG/FSkM8zWzDt8H
	 S8WaRexxJvaSjw/T03N0kZKATjpNAwDZPArBKlGSx8NfpkezQKSx3VAm77H4aprr5r
	 fmlyoj4xtLUaLfVO61IAw/xJ8YFldOr+fJzgfFaKz0ykneLEr6MxyYw5P01CJNerCI
	 9fD+hwequ26j1su69XFfDeS7zlJZ3B0EC+e0da4bgt2PqZqD/u7/GNcD5aob17fO2m
	 gN66+MwMQY2k+xjl14scoWfYMhHeWs7rzp9BH6AP7IXv0MO3kD7/TRzG1F4e5+YNz8
	 1YnrfzRjzPF6g==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com
 [IPv6:2a00:1450:4864:20::131])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id AFAB03B2A4
 for <cake@lists.bufferbloat.net>; Mon, 22 Jun 2020 09:11:15 -0400 (EDT)
Received: by mail-lf1-x131.google.com with SMTP id u25so9604893lfm.1
 for <cake@lists.bufferbloat.net>; Mon, 22 Jun 2020 06:11:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=/u5yAPxKUNQ3BOuZnWEksh38cHAg48bj+tiU84KA8MY=;
 b=ZyTpXy+hUkCtXDLO5xQWo3lPl26NlQaWrg731+qItG7esr8ON/M1rMR/VemO6VEawF
 PaWo17OWJSOnq94XVXfkbt7YLh7/nwmiS+A2O8/XFeRV1Jj2Np3eIl5cLDJnfBiDCTCd
 pjdgUoaEf++OKcGQlK6SzmyYhsPg+QJhwreaN5YY1Kfe5ql8K5ODGhF42/Y1GZ+L2l8m
 VBfy/budoSwe9e2RkG8rrC6mGrL4mR6o8VTc13/4dKpjTbikPpLPACtz6q6jXMXBcIB/
 7U+AcAKVC8p53VE8VLbrfCAxcxbrVlGlYGJrGePC/5Pot6IxMPohoG68SZqNOeFv/Zxl
 LRRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=/u5yAPxKUNQ3BOuZnWEksh38cHAg48bj+tiU84KA8MY=;
 b=ZuB2DfsJ+mpU0UDpWdYjZVJsRHb2GPDpSv3E1xQBfSQtIwfsP9utpsOzqSLRrPOKvI
 cY6t0bbgatE9a60qroz07zxUTTFujFHl4N/mWJb/AhIUVX56scrdA+wCmXb6qch2iU+Z
 VK1Ay+ieODeTzGX17+AB/fc0hrxssXiLZje4G1mXgcOcrLjYPuenHfP8NUUCX1mVScpD
 JdNHl73ynPQhBHjWSfEy+rnGQcjlQK/fYd4LeptztpOrTv+d49VMTjgbdcKGuCMhi+1i
 UoUfFR9pz1aHwTbg9Bk51d3goCXUL820msOP01QDQKW/PdCXznIitgeD+CuNIXINIl30
 hlxA==
X-Gm-Message-State: AOAM532FaymuTXJjMvZCL5VMb0xQMym6Ui/vDzQS+khU5ynCTbm7T9WD
 lK2sMfRrlG4F4bJrGHuqOWb4mQ9UJCokvCgdXF0l1uJG
X-Google-Smtp-Source: ABdhPJz2qWa9yTyhLLn97dc1XvLLgg4BfvEKJu20I7EZ1UBAWmGcGDm5Zkkd57nZGfnuA3eoR0ispyuchrZANS5RbeY=
X-Received: by 2002:a19:23cc:: with SMTP id j195mr9810214lfj.210.1592831474127; 
 Mon, 22 Jun 2020 06:11:14 -0700 (PDT)
MIME-Version: 1.0
From: Jose Blanquicet <blanquicet@gmail.com>
Date: Mon, 22 Jun 2020 15:10:37 +0200
Message-ID: <CAFC8iJKY+1iuiTHuo5OditK7RtpqZ=bbap+gzdEuM=gt5fiNZw@mail.gmail.com>
To: cake@lists.bufferbloat.net
Subject: [Cake] [CAKE] Rate is much lower than expected - CPU load is higher
	than expected
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
Cc: marco maniezzo <marco.maniezzo@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SGkgZXZlcnlvbmUsCgpXZSBoYXZlIGFuIGVtYmVkZGVkIHN5c3RlbSB3aXRoIGxpbWl0ZWQgQ1BV
IHJlc291cmNlcyB0aGF0IGFjdHMgYXMgYQpnYXRld2F5IHRvIHByb3ZpZGUgSW50ZXJuZXQgYWNj
ZXNzIGZyb20gTFRFIHRvIGEgcHJpdmF0ZSBVU0ItTkNNCm5ldHdvcmsgKEFuZCBhbHNvIHRvIGEg
V2ktRmkgcHJpdmF0ZSBuZXR3b3JrIGJ1dCB3ZSB3aWxsIHdvcmsgb24gaXQKbGF0ZXIpLiBPdXIg
cHJvYmxlbSBpcyB0aGF0IHRoZSBiYW5kd2lkdGggb24gTFRFIGFuZCBVU0IgbGluayBpcwpoaWdo
ZXIgdGhhbiB3aGF0IHRoZSBzeXN0ZW0gaXMgYWJsZSB0byBoYW5kbGUgdGh1cyBpdCByZWFjaGVz
IDEwMCUgb2YKQ1BVIGxvYWQgd2hlbiB3ZSBwZXJmb3JtIGEgc2ltcGxlIHNwZWVkIHRlc3QgZnJv
bSBhIGRldmljZSBvbiB0aGUKcHJpdmF0ZSBuZXR3b3JrLgoKVGhlcmVmb3JlLCB3ZSB3YW50IHRv
IGxpbWl0IHRoZSBiYW5kd2lkdGggdG8gYXZvaWQgc3lzdGVtIGdldHRpbmcKc2F0dXJhdGVkIGlu
IHN1Y2ggdXNlLWNhc2UuIFRvIGRvIHNvLCB3ZSB0aG91Z2h0IHRvIHVzZSB0aGUgQ0FLRSBvbgp0
aGUgVVNCIGludGVyZmFjZS4gRm9yIGluc3RhbmNlLCB3ZSB0cmllZDoKCiAgICB0YyBxZGlzYyBy
ZXBsYWNlIHJvb3QgZGV2IGV0aDAgY2FrZSBiYW5kd2lkdGggMjBtYml0IGV0aGVybmV0CmludGVy
bmV0IGZsb3dibGluZCBub25hdCBiZXN0ZWZmb3J0IG5vd2FzaAoKSXQgd29ya2VkIGNvcnJlY3Rs
eSBhbmQgdGhlIG1heGltdW0gcmF0ZSB3YXMgbGltaXRlZCBidXQgdGhlcmUgYXJlIHR3bwp0aGlu
Z3MgdGhhdCBhcmUgd29ycnlpbmcgdXM6CgoxKSBUaGUgbWF4aW11bSByYXRlIHJlYWNoZWQgYWZ0
ZXIgYXBwbHlpbmcgQ0FLRSB3YXMgaW4gYmV0d2VlbiAxMk1icHMKYW5kIDE1TWJwcyB3aGljaCBp
cyBxdWl0ZSBsb3dlciB0aGFuIHRoZSAyME1icHMgd2UgYXJlIGNvbmZpZ3VyaW5nLCB3ZQp3ZXJl
IGV4cGVjdGluZyBhcm91bmQgMTgtMTkuIFdoeT8gSXMgdGhlcmUgc29tZXRoaW5nIGluIHRoZSBw
YXJhbWV0ZXJzCndlIGFyZSBkb2luZyB3cm9uZz8gUGxlYXNlIHRha2UgaW50byBhY2NvdW50IHRo
YXQgb3VyIGdvYWwgaXMgdG8gbGltaXQKdGhlIHJhdGUgYnV0IGFkZGluZyBhcyBsaXR0bGUgQ1BV
IGxvYWQgYXMgcG9zc2libGUuCgoyKSBUaGUgQ1BVIGxvYWQgYWRkZWQgYnkgQ0FLRSB3YXMgbm90
IG5lZ2xpZ2libGUgZm9yIG91ciBzeXN0ZW0uIEluCmZhY3QsIHdlIGNvbXBhcmVkIHRoZSBDUFUg
bG9hZCB3aGVuIGxpbWl0YXRpb24gd2FzIGRvbmUgYnkgQ0FLRSBhbmQgYnkKdGhlIGRldmljZSBv
biB0aGUgcHJpdmF0ZSBuZXR3b3JrLCBlLmcuIGN1cmwgdG9vbCB3aXRoIHBhcmFtZXRlcgoiLS1s
aW1pdC1yYXRlIi4gQXMgYSByZXN1bHQsIHdlIGZvdW5kIHRoYXQgdGhlIENQVSBsb2FkIHdoZW4g
dXNpbmcKQ0FLRSB3YXMgMzAlLiBJcyB0aGVyZSBhbnkgd2F5IHRvIG1ha2UgaXQgbGlnaHRlciB3
aXRoIGEgZGlmZmVyZW50CmNvbmZpZ3VyYXRpb24/CgpUaGFua3MgaW4gYWR2YW5jZSBmb3IgdGhl
IHN1cHBvcnQuIEFueSBzdWdnZXN0aW9uIGlzIHdlbGNvbWUuCgpKb3NlIEJsYW5xdWljZXQKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5n
IGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9h
dC5uZXQvbGlzdGluZm8vY2FrZQo=
