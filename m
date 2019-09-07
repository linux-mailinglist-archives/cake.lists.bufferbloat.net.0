Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D420AC9F9
	for <lists+cake@lfdr.de>; Sun,  8 Sep 2019 01:42:39 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 74B3A3CB67;
	Sat,  7 Sep 2019 19:42:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1567899758;
	bh=mzShQpAd4Tys5i603UW3QpvEWmL+3XyBBzIPjbxN0XA=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JRlwGqvGpE4MzbLXHcv8R3SieWRrfKKZ/mwxq/GG9e3fpc6PAxMHc5sb2gMpU3Cla
	 gxiD8GzIQKeS4VRpTmGC/rRCqr2AhOIkuZOyQwaf7w2p9ojLM5P7BxtJKW35q7WIqn
	 mDClFhVjrpGPYKU3182sHY5jthjwmbe+k0xsGKllw8JSpMjnuYhGi3nGJVfzU0tgp7
	 cfTfNG+XcA65z1n5HqZlcDB7WnnFTCJD+XGBaV1GQlcSDbK77slR90AtkQcHTHbvrO
	 pQLNR7ZGhkbQ3xXqkk4OoSwiRxIoRktSXaBGN5qqz0dkzJuqhCAkAg6RvVnQHtDE5J
	 lcB9rLYDyrdCg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com
 [IPv6:2a00:1450:4864:20::135])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id A29ED3B2A4
 for <cake@lists.bufferbloat.net>; Sat,  7 Sep 2019 19:42:37 -0400 (EDT)
Received: by mail-lf1-x135.google.com with SMTP id x80so7796033lff.3
 for <cake@lists.bufferbloat.net>; Sat, 07 Sep 2019 16:42:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=nJOzS7HeqiCPRins7cD1zUp0SzR4t1xH+bN3mzOaykw=;
 b=nMCaEYIvlh7RbeGG/F3SKWrTRz3NCgMA3kXO0EJDaB2/3WL1iR1nK5DfdEGTesepQH
 mOMIPvMqmA+ZdBOqJFr/zz+3CdFV2ST/YgOOaEepevBfXwQEs3ognYUzanOgHGZGPBP/
 PkhgfZQTjmkCm0trvp5lxG6DFr4bIaFN49yQqTN5DZ1FcSPSdhxsLKUGrm05zW8yuq8B
 Fe3KQGU/MBiheP756JL35zt6uFPli/A7usxLSDa3fS8pz4razKPeZpYu7KmTdThZvQW0
 +YOYAppxul/z69k39Hg3C0DE93aZnt+sDphXHkGEBmHF0fiylcOYekquLsayypP4R9TB
 +kUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=nJOzS7HeqiCPRins7cD1zUp0SzR4t1xH+bN3mzOaykw=;
 b=g85PQNaMONasZH7Zzkyopoe1BzHmq4J9LtrAjHHcF/+svqcHZqL2unFJD0Qge0rPth
 gdZPEEMTfCsr13boFaIFGZSsI4xkBIPF0aj10b+1JezffZrXS/xLYg+mjxNBJo03DGi7
 ymhHT7vXjoI7m7XfxtQyGv0DNkTvC8b3meK2927N+dnAxwjIaAQGH8Dgmkhi/emgv1Ar
 +G8B7sehIysQ6PXwLTXLhshj4zAdDEqhzV7/pCBvUS+7PEEJgXFhO2wlZV1TaZOhyGRV
 kv6bylGb5bXYdgj9BQveXrI14EYTnDLzP7GmudxKjLZkYOxwRtX+JVR7e2vhYdRhrUSu
 P2tg==
X-Gm-Message-State: APjAAAXApaWxST2XufOQks+1t58saYwkIIH20AUNBX067xKofDWjpiDT
 9fDwmIqYEW3sSq7qfy2Ac2n8o/5gIGM=
X-Google-Smtp-Source: APXvYqygS9SQI3EwQIDJLGFfk2q+7YbNk3oy3jOsBsPs5XdMzCmfKYofB/Y2lIWU+3sZn7s8nx7Slw==
X-Received: by 2002:ac2:508b:: with SMTP id f11mr11477364lfm.153.1567899756641; 
 Sat, 07 Sep 2019 16:42:36 -0700 (PDT)
Received: from jonathartonsmbp.lan (83-245-237-193-nat-p.elisa-mobile.fi.
 [83.245.237.193])
 by smtp.gmail.com with ESMTPSA id u21sm1710976lje.92.2019.09.07.16.42.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 07 Sep 2019 16:42:35 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <18b1c174-b88d-4664-9aa8-9c42925fc14c@www.fastmail.com>
Date: Sun, 8 Sep 2019 02:42:34 +0300
Message-Id: <E0C914DE-893D-4B14-9179-F10EB595DE0C@gmail.com>
References: <ac3db996-6769-4e38-b19b-eaa08ac40cd5@www.fastmail.com>
 <2825CE14-2109-4580-A086-9701F4D3ADF0@gmail.com>
 <18b1c174-b88d-4664-9aa8-9c42925fc14c@www.fastmail.com>
To: Justin Kilpatrick <justin@althea.net>
X-Mailer: Apple Mail (2.3445.9.1)
Subject: Re: [Cake] Fighting bloat in the face of uncertinty
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

PiBPbiA4IFNlcCwgMjAxOSwgYXQgMjozMSBhbSwgSnVzdGluIEtpbHBhdHJpY2sgPGp1c3RpbkBh
bHRoZWEubmV0PiB3cm90ZToKPiAKPiBJZiBJIHNldCBhIHRocm91Z2hwdXQgdGhhdCdzIDUwJSB0
b28gaGlnaCBzaG91bGQgaXQgc3RpbGwgaGVscD8gSW4gbXkgdGVzdGluZyBpdCBkaWRuJ3Qgc2Vl
bSB0by4KCkluIHRoYXQgY2FzZSB5b3Ugd291bGQgYmUgcmVseWluZyBvbiBiYWNrcHJlc3N1cmUg
ZnJvbSB0aGUgbmV0d29yayBpbnRlcmZhY2UgdG8gY2F1c2UgcXVldWluZyB0byBhY3R1YWxseSBv
Y2N1ciBpbiBDYWtlIHJhdGhlciB0aGFuIGluIHRoZSBkcml2ZXIgb3IgaGFyZHdhcmUgKHdoaWNo
IHdvdWxkIGFsbW9zdCBjZXJ0YWlubHkgYmUgYSBkdW1iIEZJRk8pLiAgSWYgdGhlIGRyaXZlciBk
b2Vzbid0IGltcGxlbWVudCBCUUwsIHRoYXQgd291bGQgZWFzaWx5IGV4cGxhaW4gMzAwbXMgb2Yg
YmxvYXQuCgpJbiBmYWN0IEknbSB1bnN1cmUgYXMgdG8gd2h5IGNoYW5naW5nIHRoZSBBUU0gcGFy
YW1ldGVycyB3b3VsZCBjdXJlIGl0LiAgWW91IG1heSBoYXZlIGJlbmVmaXRlZCBmcm9tIGFuIHVu
aW50ZW50aW9uYWwgc2Vjb25kLW9yZGVyIGVmZmVjdCB3aGljaCB3ZSBub3JtYWxseSB0cnkgdG8g
ZWxpbWluYXRlLCB3aGVuIHRoZSAndGFyZ2V0JyBwYXJhbWV0ZXIgZ2V0cyB0b28gY2xvc2UgdG8g
dGhlIENQVSBzY2hlZHVsaW5nIGxhdGVuY3kgb2YgdGhlIGtlcm5lbC4KCkkgZ2VuZXJhbGx5IGZp
bmQgaXQncyBiZXR0ZXIgdG8gKnVuZGVyZXN0aW1hdGUqIHRoZSBiYW5kd2lkdGggcGFyYW1ldGVy
IGJ5IDUwJSB0aGFuIHRoZSByZXZlcnNlLCBzaW1wbHkgdG8ga2VlcCB0aGUgcXVldWUgb3V0IG9m
IHRoZSBkdW1iIGhhcmR3YXJlLiAgQnV0IGlmIHlvdSB3YW50IHRvIHRyeSBpbXBsZW1lbnRpbmcg
QlFMIGluIHRoZSByZWxldmFudCBkcml2ZXJzLCBnbyBhaGVhZC4KCiAtIEpvbmF0aGFuIE1vcnRv
bgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1h
aWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZl
cmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
