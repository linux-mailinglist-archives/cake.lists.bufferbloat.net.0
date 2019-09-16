Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B7D9B3B85
	for <lists+cake@lfdr.de>; Mon, 16 Sep 2019 15:39:26 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 0BA303CB40;
	Mon, 16 Sep 2019 09:39:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1568641165;
	bh=7lUAEvqX5LyQljbosEGL7zfTx3kIzStzodqzFRyUCjs=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NyZ+0aN3i2/S00JNlcE2PScePZv7iXaM+prhGEoGrZx8hAToanfetcpk65oYDxOaL
	 Fk+dGtPKK2mMVgq8ca+0QAXr9r7eWfgSQP7987eiwIA7uF56iLUIyuR/+nJ7F+L/N1
	 7bwefhhlCuUIO0IOgVPi8RTp2hZd9s+ITPlm6BrBJIjv2J57BU2KHygtZ4/yfTwfde
	 ItsMjxJQaDy25Rte3BtUsMbYwLcNumjYk/+k2Aih4/JRNyKHGQIifNwOeAyKlMuCcg
	 kVcMN//Jf24vJVIMOWu1al4Cr8V45KJEz9exKFCW0BYJCjLXBEcvkRrHlikPJreMGR
	 hpdhYpHW0PgnQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com
 [IPv6:2a00:1450:4864:20::230])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 952E33B2A4
 for <cake@lists.bufferbloat.net>; Mon, 16 Sep 2019 09:39:23 -0400 (EDT)
Received: by mail-lj1-x230.google.com with SMTP id c22so5975234ljj.4
 for <cake@lists.bufferbloat.net>; Mon, 16 Sep 2019 06:39:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=DvMUX3IpTNda6Z5Kg+slFcDsCPpsfv/t60OQ0c0BPHY=;
 b=rwu9r+KJQXL98n4LmJSgdLC+WZG0OpHqhRdnOnFdVoQA+xsmIuYyOlVHzI4sV7HNGh
 tY+0C3BeMo6cuWcdOLxPdISGQsDa0f9K2V/9olkAGZvIVlmNSn+ZxWkbcxUqkUNgsl5O
 PYIeW7uPYq5IDHOFt1vyXwCc5wHg0gsO9uLjveQ+CSSvS5h9AbrGpQWuL3PhIFS/YL3j
 KQCGsp4ZgsRzvllvinnlrSYWlrfYRF2uHjjQ0PHCfWBr+23Ln/cGg8qSt5dIkjlhwch5
 dZXeCgBXgAYvYr1sDjskMPdmDFcgAjmnnRk8IgGke8z19wFZOG1TMKgPSjpXZCKimcwW
 PeAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=DvMUX3IpTNda6Z5Kg+slFcDsCPpsfv/t60OQ0c0BPHY=;
 b=cxG8+g9fKBE64temi/JjFT8g7pz3pgdKqPNzUVu9sW2CoGukumWQ7gDlkxSDk5P74R
 idOegMSngv6ZqF+aAME7LmX+e4NhpipYgxhGW1kEsI6XAwmIC39stVM//maO9/VYaXqH
 mEguBj1bQ584r1JJIQUsnqqwmXsZuFjYpYIFYEZwlQD6Iy3aSk/tn0djcflrgokp6GzM
 4nHWQ8E2LHfEa4NjrhcTNoPm9KSlK8YwYu/CY95cg3m288xe38IYFlGHGapKJG/HEZKe
 oD85zFfBs7Gf53uEPDFV/qnvg8pSWfwUg23nsTabJOU5KL0N4J1FInBIQvcsGmPEnHAk
 wrRA==
X-Gm-Message-State: APjAAAXvEgz/rhQ4M5tzserNJVUo26P7CX+S+CeASZGESzFViFnRLiyg
 Ayc5s6i3vYFPd0Faizt8fwM=
X-Google-Smtp-Source: APXvYqzQWHubhPHl6ZohrUHFzNVUpCN1Fy/FYtksDPITmVsDFtYWJ3QBMG9r5rJesq4+7bnhD6gR1g==
X-Received: by 2002:a05:651c:110f:: with SMTP id
 d15mr1347587ljo.43.1568641162437; 
 Mon, 16 Sep 2019 06:39:22 -0700 (PDT)
Received: from jonathartonsmbp.lan (83-245-235-113-nat-p.elisa-mobile.fi.
 [83.245.235.113])
 by smtp.gmail.com with ESMTPSA id h2sm8460548ljb.11.2019.09.16.06.39.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 16 Sep 2019 06:39:21 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <93040b26-aa44-41b9-abec-7e1f637c0cb1@www.fastmail.com>
Date: Mon, 16 Sep 2019 16:39:20 +0300
Message-Id: <2FE4FDA8-BB22-4216-8D97-FA05D896E54B@gmail.com>
References: <ac3db996-6769-4e38-b19b-eaa08ac40cd5@www.fastmail.com>
 <2825CE14-2109-4580-A086-9701F4D3ADF0@gmail.com>
 <18b1c174-b88d-4664-9aa8-9c42925fc14c@www.fastmail.com>
 <E0C914DE-893D-4B14-9179-F10EB595DE0C@gmail.com>
 <9a90111b-2389-4dc6-8409-18c40f895540@www.fastmail.com>
 <43F02160-E691-4393-A0C0-8AB4AD962700@gmail.com>
 <a75b079e-8a29-46f1-9890-7eb73e18b0f2@www.fastmail.com>
 <E975CC03-A531-4450-A896-5C3921A9D063@gmail.com>
 <057ea708-6797-23f5-ef01-9d3d7b002578@newmedia-net.de>
 <CAA93jw6+=SuQhFbvVWMbL3m3r_0pRWSMmgScHbhZ=sSN9prntw@mail.gmail.com>
 <f44aa0fc-64d3-88a3-98db-dccf4f2c0530@newmedia-net.de>
 <93040b26-aa44-41b9-abec-7e1f637c0cb1@www.fastmail.com>
To: Justin Kilpatrick <justin@althea.net>
X-Mailer: Apple Mail (2.3445.9.1)
Subject: Re: [Cake] cake memory consumption
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

PiBPbiAxNiBTZXAsIDIwMTksIGF0IDQ6MjggcG0sIEp1c3RpbiBLaWxwYXRyaWNrIDxqdXN0aW5A
YWx0aGVhLm5ldD4gd3JvdGU6Cj4gCj4gT3BlbldSVCAxOC4wNi40IG9uIGEgZ2xiMTMwMCBhbmQg
MTArIHZpcnR1YWwgaW50ZXJmYWNlcyB3aXRoIGNha2UuIFRvdGFsIG1lbW9yeSB1c2FnZSBpcyA3
ME1CIGZvciBldmVyeXRoaW5nLiAKCk15IElRcm91dGVyLCB3aGljaCBpcyBBcmNoZXIgQzcgaGFy
ZHdhcmUsIGlzIHByZXNlbnRseSBydW5uaW5nIHdpdGggNzNNQiBmcmVlIG91dCBvZiAxMjhNQiwg
YWZ0ZXIgbmVhcmx5IDQzIGRheXMgdXB0aW1lIHdpdGggaGVhdnkgdXNhZ2UuICBJdCBoYXMgYXQg
bGVhc3QgdHdvIENha2UgaW5zdGFuY2VzIHJ1bm5pbmcsIG9uIGEgcmVjZW50IGtlcm5lbC4KCkkg
c2VlIGZyb20gdGhlIGZvcnVtIGxvZ3MgdGhhdCBrZXJuZWwgMy4xOC54IGlzIGluIHVzZSB0aGVy
ZS4gIFRoYXQncyB2ZXJ5IG9sZCBpbmRlZWQsIGFuZCBJIGJlbGlldmUgdGhlcmUgd2VyZSBzb21l
IGZhaXJseSBiaWcgZGlmZmVyZW5jZXMgaW4gcGFja2V0IG1lbW9yeSBtYW5hZ2VtZW50IHNpbmNl
IHRoZW4uICBJdCB3b3VsZCBiZSBlbnRpcmVseSBwb3NzaWJsZSBmb3Igc29tZSBtZW1vcnkgbWFu
YWdlbWVudCBidWcgdG8gYmUgaW50cm9kdWNlZCBieSBhIHZlbmRvciBwYXRjaCwgZm9yIGV4YW1w
bGUuCgogLSBKb25hdGhhbiBNb3J0b24KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5u
ZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
