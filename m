Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 3395651A5F
	for <lists+cake@lfdr.de>; Mon, 24 Jun 2019 20:20:31 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 115E13CB38;
	Mon, 24 Jun 2019 14:20:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1561400430;
	bh=99vY8VxDtEXQgU4FTjpaM7pAschMnUtc0pODfHY1Kwo=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jw04H0gew2dBYJ+ZOjnB05R2zONnJY5xtJCaIEuKHtuawlLEMaXhaOqhQyeU2D+0N
	 7xG97K/4Lm9frELtmnlB7zns+AAQHIAt/6amnDrbXzThYKSCUva0Ccnluk+QoKUtkt
	 aULq0k6ojFxvTRkscfNfzL+lqXY5vLPXD3CiVPdbCAQAJNjxQhogkYtNaIqMpfS7Y2
	 5g/OW/q2KxDlKCX+FmavEuTvOwtToMm1jQCvh+nmHcm6fnUPgy4tThPUxRLYtPe+5J
	 FKaiQLgC8RIxEUP7NS+FTyYvbuePcZJRtpnJ6YWa7cV+UsfWmI7VfD9eJC4JrcMlZh
	 y2KeL/9ahLKrA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com
 [209.85.208.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 727C93B29E
 for <cake@lists.bufferbloat.net>; Mon, 24 Jun 2019 14:20:28 -0400 (EDT)
Received: by mail-ed1-f41.google.com with SMTP id k8so23088003eds.7
 for <cake@lists.bufferbloat.net>; Mon, 24 Jun 2019 11:20:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=2to1xewlXLHFA2eOfkEq4/FjHxhKo9QrWxfwsZMg3MA=;
 b=kuXJH+9Bn741+5U8ieHgoxXNuMSmoKy269mteZrkoIUJylOidaTFNMWkmkQdNhXhAN
 uV08geGepYWVE0txNCKQTdGZD16cViJpoeE+Su1m1Jnxlh1sAOksP04A7sfkEE07wqXO
 allBSvxQ4ctseODQqboJ+saPHTlgUweiN5/E1wBqsSzW0AqRJNqdF0kXilsfsthd1DtW
 4yGS8FcXu6cJR506iZ+L3dE45rDHymJnqHppUStl35AvsKZnXR55niSMegW6tPSkLq9v
 o2NCZsprvPq36kugOjsUkDvVuQNE0oBii0y+J115j6M0odkz6/wlva9Gxu87L5tdts9m
 d2hA==
X-Gm-Message-State: APjAAAWLgfUuS7zMXqHrsghGdTGq6fF9huFNre0s60DK6etdfxb340Ji
 pkvFQKKyeo82N0/f0EY4KXYPQQ==
X-Google-Smtp-Source: APXvYqwIr7tc+PkbyxGNJwdqyaLKXswCh3WDkq0j/Zv6nJE4MvKP6IhTyIJZa8+2YTEReFGBGDBZzg==
X-Received: by 2002:a17:906:a4cf:: with SMTP id
 cc15mr79119370ejb.12.1561400427607; 
 Mon, 24 Jun 2019 11:20:27 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a00:7660:6da:443::2])
 by smtp.gmail.com with ESMTPSA id i1sm1996501ejo.32.2019.06.24.11.20.26
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 24 Jun 2019 11:20:26 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id A74E61804B5; Mon, 24 Jun 2019 20:20:25 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Maciej =?utf-8?Q?So=C5=82tysiak?= <maciej@soltysiak.com>, Dave Taht
 <dave.taht@gmail.com>
In-Reply-To: <cnMBQ5duQ57XxBwmcXFDNsPq0pdJ5rtIuWjgBniWBaMaykmHjL7FlodyQneHwVdlu8zwZo3bAUdBI2uKaW0__2WWfrsNp3qo6HB0T6GbrPU=@soltysiak.com>
References: <CAA93jw6C3agU4sencGgeJWHThEDsa-ingmkMG+EzUwydGw96GQ@mail.gmail.com>
 <cnMBQ5duQ57XxBwmcXFDNsPq0pdJ5rtIuWjgBniWBaMaykmHjL7FlodyQneHwVdlu8zwZo3bAUdBI2uKaW0__2WWfrsNp3qo6HB0T6GbrPU=@soltysiak.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Mon, 24 Jun 2019 14:20:25 -0400
Message-ID: <874l4e4zh2.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] [Cerowrt-devel] althea presentation on isp in a box at
	nanog 76
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
Cc: Cake List <cake@lists.bufferbloat.net>, HOMENET <homenet@ietf.org>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

TWFjaWVqIFNvxYJ0eXNpYWsgPG1hY2llakBzb2x0eXNpYWsuY29tPiB3cml0ZXM6Cgo+PiBodHRw
czovL3d3dy55b3V0dWJlLmNvbS93YXRjaD92PUc0RUtiZ1NoeUx3Cj4+Cj4+IEludGVyZXN0aW5n
IHN0dWZmIC0gd2lyZWd1YXJkLCBmcV9jb2RlbC9zY2hfY2FrZSwgYmFiZWwgd2l0aCBuZXcKPj4g
bWV0cmljIHRoYXQgYWxsb3dzIGZvciBjcnlwdG9jdXJyZW5jeSB0cmFmZmljIGJpbGxpbmcuCj4g
VmVyeSByZWZyZXNoaW5nLCB3b3VsZCBsb3ZlIHRvIHNlZSB0aGF0IHN1Y2NlZWQgYW5kIHRoZW4g
Z2V0IHBvcHVsYXIgaW4gRXVyb3BlIHRvbyEKPgo+IE9uIEdldHRpbmcgU3RhcnRlZCBQYWdlIFsx
XSB0aGV5IHN1Z2dlc3QgVFAgTGluayBDNyBmb3IgQ1BFcy4gSXMgdGhhdAo+IHN0aWxsIG9uZSBv
ZiB0aGUgYmVzdCBzdWl0ZWQgaG9tZSByb3V0ZXJzIGZvciBnZXR0aW5nIG1ha2Utd2lmaS1mYXN0
Cj4gYW5kIGJ1ZmZlcmJsb2F0LWNvbWJhdCBpbj8KClllYWgsIGlmIHlvdXIgbGluayBzcGVlZCBp
cyB3aXRoaW4gaXRzIGNhcGFiaWxpdGllcy4gSXQgY2FuIHNoYXBlIHVwIHRvCn4yNTAgTWJwcyBJ
IHRoaW5rLi4uCgotVG9rZQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRw
czovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
