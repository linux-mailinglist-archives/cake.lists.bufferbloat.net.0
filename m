Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id B203550A4C
	for <lists+cake@lfdr.de>; Mon, 24 Jun 2019 14:03:42 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id DA64F3CB3C;
	Mon, 24 Jun 2019 08:03:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1561377820;
	bh=84gqOD+zvvl3KaBBMW9X+XI9n6ZEHZa7EkJB6k6MW4U=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ii2q+QLNpA6/MPixh4muh8GjaCjt1TF9okSP26CM0glUug9fLYIO6NxR/UbCI7SNN
	 Mexzj4TQc1Y3sNBAHyxMhOtgHshKJwRrNTrJNsT40b+eL5W0UJzbCBconHFZF7xGWx
	 DfTuIFWTnlr1rnAc9OaS0P8kW6UzsUTnNSUMb0880UeufXBRI2kqFoeYYHyLU5Rf2A
	 f000nBeJ/icRU05P06OBLiFlpuLagNRlzZiOC5puMwc6ZsKcauT8JZonMwgfbKVr64
	 VHx+Bj/sBPgsKx1sUZkph8wXvtB+pAYkLCgsyNZBnn43E0A0CgctPIM0mTI7K/sE9B
	 Qxg7UAUktQ2EA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com
 [IPv6:2a00:1450:4864:20::232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 8077A3B29E;
 Mon, 24 Jun 2019 08:03:39 -0400 (EDT)
Received: by mail-lj1-x232.google.com with SMTP id v24so12313870ljg.13;
 Mon, 24 Jun 2019 05:03:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=M6Y5fmBbJK7DPSGeKIgd7AihUTetR1m/emrLF60u3lc=;
 b=tA6rJ0MOr76VXKmRjUwI7n6nD3qF/m2rWTRpHp4+k63GtkmqOLlg8sfoJ9y94nRKtS
 FiAkCuqn4VtXgqwoNOJOhmcp2oqNvwjcPAnNtMIlwpd9NhCi+OvgfI2d6OgY4N93fvKu
 RPbPjNeLkdxqI8w1lMBHQRlhwl8QzQSJlwYGWd9SmDFCsiKcEX7WqDMx5cH8PD2IRYjk
 ZwtFNGJyde8ioVqSV6/LKiH1X6+PpmdbUefDTJ7Ofv/CiTRaeIzK4B4B+YbpDxcBXIIt
 vXwuBOS+4svsvnEkTMovLd+ura3Ln2QGFgb9UKNFbTk34Pd7AT2htmMyh5/ND2FJJ64Z
 V+OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=M6Y5fmBbJK7DPSGeKIgd7AihUTetR1m/emrLF60u3lc=;
 b=OPhX/fmY0ZWmWeHPrcWl+9yPbfz6U5gJ3gNdcFMjP9uBR9EFkZk+1GIt4cC5M+QY0R
 HOR7bTH4/TzNas9qHEQQ9qZmZXcGKqAo7ay4s/rDGTAtT4ne1mWt80lVimRuh06OXVEv
 3MLzw0jdLglFaUEMrVWnt1QjnSHGeBqAXSmlyde1rOm/R7/RCyPmWWBVmXuXThSLdHGh
 x98nM99zDnSxdS5AwsqVtQ6qoBU/PnvB/Iavhxcu2/BmzDOakVyYqVYYC+K1d/bdHeuM
 IYY4Azm85j7KAyWrR436ufY08nmEQ+Qwj9ukCv9xqBne3u5Y8lWcLop8uNBCAlN1UyOg
 TOMg==
X-Gm-Message-State: APjAAAW8g2MR3qlkdSgrqPXbGbyPSm7wGJITkPgl0E+Pe2NQBvRQyBS0
 h3cut0zY57uqV+nQJLQo3Qw=
X-Google-Smtp-Source: APXvYqwNaTi4NETl6AVHs61tH5slYbuvtQu46ciUe7tc8bmG91M2kc5ynE6xi7FDK6O64wkeOnxclA==
X-Received: by 2002:a2e:9950:: with SMTP id r16mr47626380ljj.173.1561377818451; 
 Mon, 24 Jun 2019 05:03:38 -0700 (PDT)
Received: from jonathartonsmbp.lan (83-245-234-188-nat-p.elisa-mobile.fi.
 [83.245.234.188])
 by smtp.gmail.com with ESMTPSA id w205sm1499112lff.92.2019.06.24.05.03.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 05:03:37 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <cnMBQ5duQ57XxBwmcXFDNsPq0pdJ5rtIuWjgBniWBaMaykmHjL7FlodyQneHwVdlu8zwZo3bAUdBI2uKaW0__2WWfrsNp3qo6HB0T6GbrPU=@soltysiak.com>
Date: Mon, 24 Jun 2019 15:03:36 +0300
Message-Id: <3DAA6920-B43A-456B-8749-DD17B6EC9BFA@gmail.com>
References: <CAA93jw6C3agU4sencGgeJWHThEDsa-ingmkMG+EzUwydGw96GQ@mail.gmail.com>
 <cnMBQ5duQ57XxBwmcXFDNsPq0pdJ5rtIuWjgBniWBaMaykmHjL7FlodyQneHwVdlu8zwZo3bAUdBI2uKaW0__2WWfrsNp3qo6HB0T6GbrPU=@soltysiak.com>
To: =?utf-8?Q?Maciej_So=C5=82tysiak?= <maciej@soltysiak.com>
X-Mailer: Apple Mail (2.3445.9.1)
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

PiBPbiAyNCBKdW4sIDIwMTksIGF0IDI6NDggcG0sIE1hY2llaiBTb8WCdHlzaWFrIDxtYWNpZWpA
c29sdHlzaWFrLmNvbT4gd3JvdGU6Cj4gCj4gT24gR2V0dGluZyBTdGFydGVkIFBhZ2UgWzFdIHRo
ZXkgc3VnZ2VzdCBUUCBMaW5rIEM3IGZvciBDUEVzLiBJcyB0aGF0IHN0aWxsIG9uZSBvZiB0aGUg
YmVzdCBzdWl0ZWQgaG9tZSByb3V0ZXJzIGZvciBnZXR0aW5nIG1ha2Utd2lmaS1mYXN0IGFuZCBi
dWZmZXJibG9hdC1jb21iYXQgaW4/CgpJZiBub3RoaW5nIGVsc2UsIGl0J3Mgd2hhdCB0aGUgSVFy
b3V0ZXIgaXMgYmFzZWQgb24uICBDdXN0b20gZmlybXdhcmUsIHN0aWNrZXIgb3ZlciB0aGUgbG9n
b+KApiBpdCB3b3JrcyB3ZWxsLgoKIC0gSm9uYXRoYW4gTW9ydG9uCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxp
c3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5m
by9jYWtlCg==
