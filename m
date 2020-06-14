Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 371AA1F895B
	for <lists+cake@lfdr.de>; Sun, 14 Jun 2020 16:43:14 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id C36483CB38;
	Sun, 14 Jun 2020 10:43:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1592145792;
	bh=GPTmdzoJe8Q+Jjl0m6fyqE+tS3M2UUMKh+XdLjNIrH4=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MD+2geoLQJy88cuufnd8aHYxC1JwUuAThN4d/ZWLzx+k36DuwWp98C+PwANuv0nKc
	 SlooqXzo7tmFZqXi5bvHnUVKu3aqGYps9rTglwLHhqnfHwAYiRN4PF79isM3ThZ2zn
	 meBnSJBt4ZSHd27IO5ROirhCZkPUWwAafxIT9yJkCRgcFdtudla0K6HBnOxFGZWnXl
	 aq7sx+YUc1Ioog7xuwfi63ZCl8M4prT3/FHHzoE8akDyKrC4WLOQvZrYFx2WY3uIib
	 C3vG7vI7htawHBGDxrMPQ4CR+3j41aW2pK3Jf3YDq4QzSBq2dhucwL3ehwkLWCDKdJ
	 oEtWH1ZTSpSWQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com
 [IPv6:2a00:1450:4864:20::22d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id CE35D3B29E
 for <cake@lists.bufferbloat.net>; Sun, 14 Jun 2020 10:43:11 -0400 (EDT)
Received: by mail-lj1-x22d.google.com with SMTP id n24so16083993lji.10
 for <cake@lists.bufferbloat.net>; Sun, 14 Jun 2020 07:43:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=S6sQYQKbwl6D2do4GJGoM0FGNKQArZvIOxSM7tmUl5I=;
 b=F38UtU5UzQXtWY0bh2LmWPr0v/hghPGwzVJAWCSpkMlDLEUZXKVX8BcM48iEmzfm7b
 NJ5hoWUp0qRfqynO21yYl6fferZ7KnPP/BzgQFwhfJ/oZ0sblBKIu1js+ubrt7YkfJuU
 6hyRXZOyylNSHoJb0qoXiMccS8Pg/BO47iKc9WnSvmLTDOIRILPJPxHqqj7e5ZChgPhM
 tm1HGgXoMD8DoD3CxH621hTESj6b73lHwk51llM4+RiDzZt3sA/8tsjjd5uaXFjiYayN
 S7XFE4lP+xi7WRot2s6GVzOQEiK26D+qP+T3bTz189WdXHNSgnnD6kXFWoTNqiU6U9FE
 SyRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=S6sQYQKbwl6D2do4GJGoM0FGNKQArZvIOxSM7tmUl5I=;
 b=tEEhK93MKZdKo73CUYYuYqlMXvjMHo81eteniyneVi5lSxTXpmgdBCjmom7AgUubE9
 G1XBSWuuH+fzryhzV+RRMVbXw8+6GNh7YNEPSKBCFt678l8SfIJGV5DWI70YuBFYk4qP
 2sdouPFaNzY71CaO0hG+iQy9Fn1EwKdKHdh6hLEnYeQtmhRQAhLTSGDMg1lQ1fLpzTF8
 EAfNz+JHr7MHiYglrYH8CMR9BPfE7D5mvCYz4tLYEFuLhyF50ppCsc505Eof7zC9JsRY
 eXX0jQ5l11NCvMWzH57P8amKCVmB0q5Mf0vjp/tEyhnxWtLEM6DSp9PDJmQHVOi0bksL
 Ly0g==
X-Gm-Message-State: AOAM530lsVqklRC/0SG+UTF99IH2NaG45ed+n4gQf17ut0Nuxk1UdOYs
 iM5aIh7cniFutKk9fvlXP38=
X-Google-Smtp-Source: ABdhPJwmJfKVV6bV/qzVHJm7TKouGFks2LXz6Tr6xkIvYZfSoQz9FSya+oWn7AezBge69OSJozhbbg==
X-Received: by 2002:a05:651c:299:: with SMTP id
 b25mr11917662ljo.13.1592145790772; 
 Sun, 14 Jun 2020 07:43:10 -0700 (PDT)
Received: from jonathartonsmbp.lan (83-245-237-14-nat-p.elisa-mobile.fi.
 [83.245.237.14])
 by smtp.gmail.com with ESMTPSA id 11sm3304036lju.118.2020.06.14.07.43.09
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 14 Jun 2020 07:43:10 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.5\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <CAC8NkTCrNr8De8eT90UogVE+6ZzHgxQz1K3SXFrs1JVCTahdQQ@mail.gmail.com>
Date: Sun, 14 Jun 2020 17:43:08 +0300
Message-Id: <1F6D30F9-A697-4588-9AB7-2A3757924900@gmail.com>
References: <CAC8NkTBHv6_6u21bRu2BcEAW2X1Sio-JWvCYwQgLR2q-6eBgOA@mail.gmail.com>
 <C24C4CCB-C30D-452A-9386-5AA533F11CEE@gmail.com> <87wo5okhbo.fsf@toke.dk>
 <CAC8NkTCYBokx0NedyuOKjhZqUMHXAc5tZtObTpdyjkvE4U_zUw@mail.gmail.com>
 <A85845BB-010A-4F39-99F4-C6206F7FEA65@gmx.de>
 <CAC8NkTBRWrhAQneAf6ZacTzWLYyM5TqX6jmD4-fafAD=7iPgfQ@mail.gmail.com>
 <CAA93jw6xZRcUerJ8JuxjtjW2_C+wyAUKRtqDojPj6hLdg1w0Dg@mail.gmail.com>
 <875zd6h3bu.fsf@toke.dk>
 <CAA93jw5OP3EfedB5zDPZNYdQaH+LkhUiwaLzMDbyvnTpxZdqSw@mail.gmail.com>
 <7FCC9B1F-7F4B-43E8-B557-88B2A845C28B@gmail.com>
 <CAA93jw6qnP0r8LcUxykUtbwMuv0WcoCvtseLC4rLdbhpwnOU-Q@mail.gmail.com>
 <CAC8NkTCQQ=8Zy-YiYKP=8VLRzmrMH8g1ya1o=6iZAgY2vvbxAw@mail.gmail.com>
 <48938727-0CFF-4B72-B82B-49E0535E9B82@gmail.com> <87y2pgi5ue.fsf@toke.dk>
 <CAC8NkTCrNr8De8eT90UogVE+6ZzHgxQz1K3SXFrs1JVCTahdQQ@mail.gmail.com>
To: Avakash bhat <avakash261@gmail.com>
X-Mailer: Apple Mail (2.3445.9.5)
Subject: Re: [Cake] Query on ACK
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
Cc: Vybhav Pai <vybhavpai1999.vp@gmail.com>,
 Shrinidhi Varna <shrinidhivarna.171co145@nitk.edu.in>,
 Cake List <cake@lists.bufferbloat.net>,
 "Mohit P. Tahiliani" <tahiliani@nitk.edu.in>,
 Deepak K <deepakkavoor99@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

PiBPbiAxNCBKdW4sIDIwMjAsIGF0IDM6NDMgcG0sIEF2YWthc2ggYmhhdCA8YXZha2FzaDI2MUBn
bWFpbC5jb20+IHdyb3RlOgo+IAo+IEkgd2FudGVkIGFub3RoZXIgY2xhcmlmaWNhdGlvbiBvbiB0
aGUgcmVzdWx0cyBvYnRhaW5lZCBieSB0aGUgQWNrIGZpbHRlcmluZyBleHBlcmltZW50KCBGaWcg
NikgLiAKPiBXYXMgdGhlIGV4cGVyaW1lbnQgY29uZHVjdGVkIHdpdGggb25seSBhY2sgZmlsdGVy
aW5nIGVuYWJsZWQ/IAo+IE9yIHdhcyBzZXQgYXNzb2NpYXRpdmUgaGFzaCBhbmQgdGhlIG90aGVy
IG1vZHVsZXMgb2YgQ2FrZSBlbmFibGVkIGFsb25nIHdpdGggQWNrIGZpbHRlcmluZyB3aGlsZSBy
dW5uaW5nIHRoaXMgZXhwZXJpbWVudCA/CgpUaGUgdGVzdCB3YXMgcnVuIG9uIGEgY29tcGxldGUg
aW1wbGVtZW50YXRpb24gb2YgQ2FrZSwgc2V0IHVwIGluIHRoZSBub3JtYWwgd2F5LiAgSSB0aGlu
ayB3ZSBrZXB0IHRoZSBjb25maWd1cmF0aW9uIHNpbXBsZSBmb3IgdGhpcyB0ZXN0LCBzbyBldmVy
eXRoaW5nIGF0IGRlZmF1bHRzIGV4Y2VwdCBmb3IgY2hvb3NpbmcgdGhlIHNoYXBlZCBiYW5kd2lk
dGggaW4gZWFjaCBkaXJlY3Rpb24uCgpUaGUgYWNrLWZpbHRlciByZWxpZXMgb24gaGF2aW5nIGZh
aXJseSBnb29kIGZsb3cgaXNvbGF0aW9uLCBzbyB0aGF0IGNvbnNlY3V0aXZlIHBhY2tldHMgaW4g
dGhlIGFwcHJvcHJpYXRlIHF1ZXVlIGJlbG9uZyB0byB0aGUgc2FtZSBhY2sgc3RyZWFtLiAgU28g
YXQgbWluaW11bSBpdCBpcyBhcHByb3ByaWF0ZSB0byBoYXZlIHRoZSBzZXQtYXNzb2NpYXRpdmUg
ZmxvdyBoYXNoIGVuYWJsZWQuCgpUaGUgaG9zdC1mYWlybmVzcyBhbmQgRGlmZnNlcnYgZmVhdHVy
ZXMgd2VyZSBwcm9iYWJseSBlbmFibGVkLCBidXQgZGlkIG5vdCBoYXZlIHJlbGV2YW50IGVmZmVj
dHMgaW4gdGhpcyBjYXNlLCBzaW5jZSBvbmx5IG9uZSBwYWlyIG9mIGhvc3RzIGFuZCB0aGUgQmVz
dCBFZmZvcnQgRFNDUCB3ZXJlIHVzZWQgaW4gdGhlIHRyYWZmaWMuCgogLSBKb25hdGhhbiBNb3J0
b24KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBt
YWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZm
ZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
