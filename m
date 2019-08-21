Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id EB13497FE3
	for <lists+cake@lfdr.de>; Wed, 21 Aug 2019 18:22:05 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id D83863CB38;
	Wed, 21 Aug 2019 12:22:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1566404524;
	bh=EF6gEMfk0QuMCjnX8tGVgSYP/Qc7+t/i7mRAijSbDMU=;
	h=Date:In-Reply-To:References:To:From:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mF9pUie1BP1aKDZFhUeNAxJm1vVFPd0p8+CJErQnyw9kxw+kdFUIDxMUZ7cN4oOyT
	 Wwl3UJ2eKqh1G8v3Y8UPuak1OxXigu/Fl7ABIZk6HLiTT1VsoFk3IzTrAafjT6hQZL
	 nxJW3/F3Th9/L59laFFcFtYAryBf6eYs94CnPak8vsJwOy2aIlBfui65ivYYZd0eiG
	 wkeh3+kyOoT6lmoGoJOh/y3citRnNVclV3XrsO73ZKCLNNDy+gJxmf3cAJyV16PQDb
	 vOXLCxGKi+J/eoDtEzrluGzmikAFCkfFxHA5UaP9X4QIPkRFfkZcpZVqSPLuho3o2c
	 QzxspkUApKQTg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 9CE423CB35
 for <cake@lists.bufferbloat.net>; Wed, 21 Aug 2019 12:22:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1566404521;
 bh=/FJ9t+G+KA3XjcONsCO9DBiQK3fH/Zz7WTlS8tXFbpM=;
 h=X-UI-Sender-Class:Date:In-Reply-To:References:Subject:To:CC:From;
 b=jmf1WzDR1anneB5plXjBt5fd0EJDKbxv55v8cfakJmOeHdxqlDdIxpClX+KSVsBMt
 djtfRPI1We2B3TRKFjYiVRl4XoVbEVSUTPb6O7QHxhCvOOI3pDXmxloAmWsstX3QoC
 oqveayLv5q78/itg0gLFwiMThaQSEjGKTHgb3aVY=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [10.133.104.92] ([80.187.114.243]) by mail.gmx.com (mrgmx101
 [212.227.17.168]) with ESMTPSA (Nemesis) id 0LezI3-1ib9IU21aJ-00ql6n; Wed, 21
 Aug 2019 18:22:01 +0200
Date: Wed, 21 Aug 2019 18:21:53 +0200
User-Agent: K-9 Mail for Android
In-Reply-To: <5eb4c395-c718-2d28-65a7-9762cf8d5bea@newmedia-net.de>
References: <CAA93jw4FDjYjxxStyzMu8eCz_6Ezcumg-iZaYeM3kBZ5da8MBQ@mail.gmail.com>
 <fc64c772-d85c-deba-a0e4-4e590cfb76ee@newmedia-net.de>
 <CAA93jw4Fm=uY08A3XHWh3d=OKNfraCeYHwFGtAdPH7a51vG6WA@mail.gmail.com>
 <384866b4-4c91-cf2c-c267-ee4036e5fbf7@newmedia-net.de>
 <87wof7sriw.fsf@toke.dk>
 <6782ec15-30eb-63b0-f54f-376c5e6b840b@newmedia-net.de>
 <87tvabsp99.fsf@toke.dk>
 <74bccc2b-b805-255f-b6a7-83ade9af6765@newmedia-net.de>
 <87r25fsn70.fsf@toke.dk>
 <b52b087d-c21c-e190-1bc7-a06e5fe6305f@newmedia-net.de>
 <54438C64-C613-438E-9CB9-6C6D0C5EAFA0@gmail.com> <87sgpvflo4.fsf@taht.net>
 <87wof6rf7t.fsf@toke.dk> <7656FCDE-C590-4B0C-B191-B9FAC928A762@gmail.com>
 <CAA93jw4sEE_oQsX66xLkE+YUv=wM7AchfpUspC0y_Bf2nLdVOQ@mail.gmail.com>
 <5eb4c395-c718-2d28-65a7-9762cf8d5bea@newmedia-net.de>
MIME-Version: 1.0
To: cake@lists.bufferbloat.net,
 Sebastian Gottschall <s.gottschall@newmedia-net.de>,
 Dave Taht <dave.taht@gmail.com>, Jonathan Morton <chromatix99@gmail.com>
From: Sebastian Moeller <moeller0@gmx.de>
Message-ID: <47AD5102-B66F-44A5-AADE-D167ECB94A61@gmx.de>
X-Provags-ID: V03:K1:fghNW8zD5S61khd1lbVKyyZCXkhuGv3SzQiUWA5lLrEwxGXy3D3
 g5dVt8rkGWtgGFVT+K41joiy1bgFhI1VwmRAslF0hzN7oFpjv757c0ArUMAtPkMWfnTGhAW
 AA+x+EalLXRYgQsXOEaa6jJyhVk+GtHdXcHBzcze+w64L0R2Z+UI8xHTWZ3tl22LQYf8hAY
 RUQJhAuaxoI0RDB4N6UDg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:oymaNDMgnZ4=:6gIV88CM2LBf7KNKoxZwYI
 NTV8Ilxm4a+t7mnReUhLfAEIMO2O3Qyoc2a+FK/Cu69yUzzZ29ObzL8biZsTLj6K0UMVWVCBt
 s5hJea8oBFhGDBsLJR6dzokmSsOdLa7in9wYhk19U3AtdZP2l+Sn1Sx5G3Bf1myesPzsyz0p1
 7JvB1rfpsKNleqpi+e8eSu5iB+RrYuK7YmNOlTkp/wRD0UD3oHGeS/MICynCQYX+h7lFoZwLh
 gfi0F5dWGBtoPI5Uk/ZbtzIvD1Yil3FBgBzxsjpRpEAMjTcMlYrS2DouUMUE+c06gGXb00cTE
 RlrhDLa0jlQpRVhsmUjP/t+G1xhJY9mbD4lSZCaM1n5YlKOn+FEPUzUgqE3xmwx34rAnxsXZJ
 C5ZnWed6TW1F57bFSpWcqKwpUTGz/ImxIwnWRxifWULc573EX6uyKH2IUtoMCiifyxdmgO0M1
 0zCsbDPNO8w+lh7ImqzIW+v/kJmKT4d1Tl1qqKkt1WaF0VKhqZ38SUIc/SfPag+wRNIjtWFTj
 pn8iqPd0WfDMe9ll9/2Raz8fvdG2WyrFcp7O8J34GKPFixY7gN5iTn22Jh8X/AIEgxjaCF9Pm
 jV9YTO3ikkgo1CGMr7/fvDIpawxF18GaQmCwQxId957/jKOaVYgCs5dqQd+V4Xye8UOfyRpwt
 mV2MTWOZpxkVKG6HSlYgz0LuqNQo95ynu5n7tr1xbC5taipvdqT4dAZsiRDa1Ghn8C0H0FJZb
 SMrsbEY5rSG0iaxtoBk01Na14+FXLvu/FLWlqStS8qJbVccd/ZECmGKfzPasOA7wrFztYd4H2
 RkLxMd2R+UfpQd+BzH6F875/GmDsvJkFlyG9zfW32YwG0eLYu98O6m3LyKh2BQZW6rJLbodCn
 fsQVkT33thami4b2kciNyzfUFqhjlHkeZakuGWPZdTI7LpgYLNjCsOS9H5H4QmTOrwNm2JMoH
 wqj7z2lOiMHJmvumUAEmPdVR09cjq2dG4eNLSaojvHg4Bcj0SAHMhzvyV8jG/LyOQxj+Tu0FR
 Kq8rUCzNvlOMDQ4rJ5PW20rXSuHAHfdvLJUku9eLoE4jjY8ZF3GVUSn2KkVCwjcZxsIWeTYgP
 9qek0P6djea2Ho3O3yLMfglMEo9UNHik4oXCkJXd8JllVK5spzZLxWRCk2vChW3b9AX3BE+n3
 xdpGg=
Subject: Re: [Cake] pie in dd-wrt
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
Cc: "cake@lists.bufferbloat.net >> Cake List" <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

CgpPbiBBdWd1c3QgMjEsIDIwMTkgNjoxMjowMyBQTSBHTVQrMDI6MDAsIFNlYmFzdGlhbiBHb3R0
c2NoYWxsIDxzLmdvdHRzY2hhbGxAbmV3bWVkaWEtbmV0LmRlPiB3cm90ZToKPnRoYXRzIHJhdGhl
ciBvbGQuIGkgcmV3cm90ZSBhbGwgdGhlIHFvcyBjb2RlIGluIHRoZSBsYXN0IDQgb3IgNSBkYXlz
Lgo+c28gCj50aGluZ3MgbWlnaHQgYmUgY2hhbmdlZC4gbmV4dCBwaGFzZSBpcyBicmluZ2luZyBh
bGwgdGhlIGxpbmsgbGV2ZWwgCj5kZXRhaWwgY29uZmlndXJhdGlvbiBzdHVmZiBpbnRvIHRoZSBn
dWkgd2hpY2ggd2lsbCBiZSBkb25lCj50b21vcnJvdyBvciBhdCBsZWFzdCBzdGlsbCB3aXRoaW4g
dGhpcyB3ZWVrLgo+aSBhbHNvIGFkZGVkIG5vdyBjYWtlIHRvIHNvbWUgc21hbGxlciBsb3cgYnVk
Z2VkIHJvdXRlcnMgd2l0aCBsaW1pdGVkIAo+cmVzb3VyY2VzLCBzbyBzZWUgaG93IGl0IHJ1bnMu
IGkgaGFkIGJhZCBleHBlcmllbmNlcyB3aXRoIGZxX2NvZGVsIGluIAo+dGhlIHBhc3QgZHVlIHNv
bWUgaGlnaCBtZW1vcnkgdXNhZ2UuCj5lc3BlY2lhbGx5IHNpbmNlIGl0cyBoYXJkIGNvZGVkIHNv
bWV3aGF0IGludG8gdGhlIHdpcmVsZXNzIGF0aDlrCj5kcml2ZXIuIAo+c28gaSBhbHJlYWR5IG1v
ZGRlZCBpdCBmb3IgbW9yZSBlZmZpY2llbnQgaGFuZGxpbmcuIDQgbWIgbWF4IHBlciBxdWV1ZSAK
PmlzIHNpbXBseSB0b28gbXVjaCBmb3LCoCBhIDMyIG1iIHJhbSBiYXNlZCByb3V0ZXIuCgpUaGlz
IGlzIHdoeSBJJ20gc3FtIHdlIHJlZHVjZWQgdGhlIHF1ZXVlZCBwYWNrZXQgbWF4aW11bSBtIHRv
IGFyb3VuZCAxMDAwLCBhbmQgYWxzbyB3aHkgY2FrZSBoYXMgYW4gZXhwbGljaXQgbWVtbGltaXQg
a2V5d29yZC4KCkJlc3QgUmVnYXJkcyAKICAgICAgICBTZWJhc3RpYW4KCgo+Cj4KPlNlYmFzdGlh
bgo+Cj5BbSAyMS4wOC4yMDE5IHVtIDE3OjQyIHNjaHJpZWIgRGF2ZSBUYWh0Ogo+PiB0aGlzIHNo
b3dzIHNvbWUgZ29vZCByZXN1bHRzIHdpdGggcGllIG9uIHRoZSBkb3dubG9hZAo+Pgo+Pgo+aHR0
cHM6Ly9mb3J1bS5kZC13cnQuY29tL3BocEJCMi92aWV3dG9waWMucGhwP3Q9MzEzODg2JnBvc3Rk
YXlzPTAmcG9zdG9yZGVyPWFzYyZzdGFydD0zMCZzaWQ9NGQ0ZDJhNTgzYWZhZDczNzU5Y2JlZWUx
YThmNGIzMjkKPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPj4gQ2FrZSBtYWlsaW5nIGxpc3QKPj4gQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKPj4g
aHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo+X19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPkNha2UgbWFpbGluZyBsaXN0Cj5D
YWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldAo+aHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQv
bGlzdGluZm8vY2FrZQoKLS0gClNlbnQgZnJvbSBteSBBbmRyb2lkIGRldmljZSB3aXRoIEstOSBN
YWlsLiBQbGVhc2UgZXhjdXNlIG15IGJyZXZpdHkuCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVy
YmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
