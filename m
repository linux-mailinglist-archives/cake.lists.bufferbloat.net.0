Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DE4B99EB1
	for <lists+cake@lfdr.de>; Thu, 22 Aug 2019 20:23:47 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id BF0CF3CB3C;
	Thu, 22 Aug 2019 14:23:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1566498225;
	bh=KOXU5tDdNqXPcxkHFz9nJHAySjlPiwuJNRladfY/SSc=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bOa0O8LqOCT3aQqngVa/6HWIYCbZvRLyQOaaiKPhppk+eb8atkt00rP7neEPc9K2Q
	 PUgmwj09iR87zm17jhB8KniLmqHraiIea+qC9+P+3hCj+bw3XJw2rP0g9hfSxpbr2o
	 IsrSNygG64QfwKNddNu2JvvFzseysOURkJy+XRjLv4UJYxQ4ZWnvWUxllmc+PxsiKc
	 LnR9X5qQ/VcEYegqUfK3wmy8gjHQozoWXMixk7gqoh4ndGFV2tTkUBix5ieFwQKEiX
	 mtqiseVts2Hx3EDs/6laP03KbjZ6e2y3t4vtzawzVlXBG54jjQ8xGBLgxniGSHV98B
	 VqJ76xSi+7Huw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 8C8D53CB36
 for <cake@lists.bufferbloat.net>; Thu, 22 Aug 2019 14:23:43 -0400 (EDT)
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 7D58B859FE
 for <cake@lists.bufferbloat.net>; Thu, 22 Aug 2019 18:23:42 +0000 (UTC)
Received: by mail-ed1-f69.google.com with SMTP id y15so3827529edu.19
 for <cake@lists.bufferbloat.net>; Thu, 22 Aug 2019 11:23:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=8TcLCtS0Gsyqd0Yr5CDr5VZeGHpcZflQq2av39aT9u0=;
 b=G6lZTi1gmjfUJViD3wyqJSich2EBjOPDymNH/vZ8/jJe0n42TNK3f6Ec41BmOUeNx3
 PZL6H082tnnIXE3CgYmLFKpofTk3LoC1fYYmE5GnloCxlPU1reIuLUeB0Ny5sEPJyqGj
 AqQSQLXL11Rr6cAkyKLLs1ZLuwebW7sOaCt4JKG8M/1NUj+s5xlY/ecp9hABpvWuN/HS
 fKZhsqybtHKHZQCK2YXguyYjwAbeT5XMWeoJ12wUdwOTHgmDapRI+OiDZXR8FOoB+jap
 xfUupBlBnQSekqdfz0itO2QJ2bTGMaM58U6OpFisa62+85+sbVfyXiXNOInmMAPJadWp
 qt9Q==
X-Gm-Message-State: APjAAAXfJQbtpiNTEZPjU2+s1Fx2ZV6pgsp4iZvlxwC/jKvNSd344L30
 sK1rRyOdNRCbVUSyHJ2WH9RdsBQ7iYFfzZTKbbZycwmgUvfWyZcHgcAp4XavZxAKMCG+8hH9bIj
 GOyK+u3M6PnmBs0qrQwv50w==
X-Received: by 2002:a50:9eab:: with SMTP id a40mr268103edf.20.1566498221263;
 Thu, 22 Aug 2019 11:23:41 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwEvBj9F7SW1R0ZacFYeAqyvnlYEMhqeiIONIVFWlhPUwDUQUlImGdulBr0BhaGTLMj/SAs7A==
X-Received: by 2002:a50:9eab:: with SMTP id a40mr268081edf.20.1566498221095;
 Thu, 22 Aug 2019 11:23:41 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk (borgediget.toke.dk.
 [85.204.121.218])
 by smtp.gmail.com with ESMTPSA id g3sm34625ejj.69.2019.08.22.11.23.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Aug 2019 11:23:40 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id BFAA0181CEF; Thu, 22 Aug 2019 20:23:39 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Sebastian Gottschall <s.gottschall@newmedia-net.de>,
 Dave Taht <dave@taht.net>
In-Reply-To: <e7e08148-5791-2afc-f26c-6c4a0a3f1a9d@newmedia-net.de>
References: <CAA93jw4FDjYjxxStyzMu8eCz_6Ezcumg-iZaYeM3kBZ5da8MBQ@mail.gmail.com>
 <87tvabsp99.fsf@toke.dk>
 <74bccc2b-b805-255f-b6a7-83ade9af6765@newmedia-net.de>
 <87r25fsn70.fsf@toke.dk>
 <b52b087d-c21c-e190-1bc7-a06e5fe6305f@newmedia-net.de>
 <54438C64-C613-438E-9CB9-6C6D0C5EAFA0@gmail.com> <87sgpvflo4.fsf@taht.net>
 <87wof6rf7t.fsf@toke.dk> <7656FCDE-C590-4B0C-B191-B9FAC928A762@gmail.com>
 <CAA93jw4sEE_oQsX66xLkE+YUv=wM7AchfpUspC0y_Bf2nLdVOQ@mail.gmail.com>
 <5eb4c395-c718-2d28-65a7-9762cf8d5bea@newmedia-net.de>
 <47AD5102-B66F-44A5-AADE-D167ECB94A61@gmx.de>
 <1d772664-b6cc-a528-9725-96a431032875@newmedia-net.de>
 <87v9uqea3x.fsf@taht.net> <87tvaap57q.fsf@toke.dk>
 <CAA93jw6f0kedxwoN-ER3W1QKeg0sMxVCy6YYk_gRbrVwhD42jQ@mail.gmail.com>
 <5bbd2b81-9846-3a7a-130c-0f59e04fd2d1@newmedia-net.de>
 <CAA93jw4=13D-+WHLYPiV4NPqeVJwrLJe=nkr+a9D9Cqvq49pEQ@mail.gmail.com>
 <dcb92eaf-928e-f909-981d-c2baf74fbc90@newmedia-net.de>
 <87ftltdter.fsf@taht.net>
 <e7e08148-5791-2afc-f26c-6c4a0a3f1a9d@newmedia-net.de>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Thu, 22 Aug 2019 20:23:39 +0200
Message-ID: <87pnkxnjo4.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] Wifi Memory limits in small platforms
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
Cc: Cake List <cake@lists.bufferbloat.net>,
 make-wifi-fast@lists.bufferbloat.net,
 Battle of the Mesh Mailing List <battlemesh@ml.ninux.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

U2ViYXN0aWFuIEdvdHRzY2hhbGwgPHMuZ290dHNjaGFsbEBuZXdtZWRpYS1uZXQuZGU+IHdyaXRl
czoKCj4gQW0gMjIuMDguMjAxOSB1bSAxOTowMyBzY2hyaWViIERhdmUgVGFodDoKPj4gU2ViYXN0
aWFuIEdvdHRzY2hhbGwgPHMuZ290dHNjaGFsbEBuZXdtZWRpYS1uZXQuZGU+IHdyaXRlczoKPj4K
Pj4+IEFtIDIyLjA4LjIwMTkgdW0gMTU6MTUgc2NocmllYiBEYXZlIFRhaHQ6Cj4+Pj4gSXQncyB2
ZXJ5IGdvb2QgdG8ga25vdyBob3cgbXVjaCBmb2xrIGhhdmUgYmVlbiBzdHJ1Z2dsaW5nIHRvIGtl
ZXAKPj4+PiB0aGluZ3MgZnJvbSBPT01pbmcgb24gMzJNQiBwbGF0Zm9ybXMuIEknZCBsaWtlIHRv
IGhvcGUgdGhhdCB0aGUKPj4+PiB1bmlmaWVkIG1lbW9yeSBtYW5hZ2VtZW50IGluIGNha2UgKHZz
IGEgY29sbGVjdGlvbiBvZiBRb1MgcWRpc2NzKSBhbmQKPj4+PiB0aGUgbmV3IGZxX2NvZGVsIGZv
ciB3aWZpIHN0dWZmIChjdXR0aW5nIGl0IGRvd24gdG8gMSBhbGxvYyBmcm9tIGZvdXIpCj4+Pj4g
aGVscCwgbWFzc2l2ZWx5IG9uIHRoaXMgaXNzdWUsIGJ1dCB1bnRpbCB0b2RheSBJIHdhcyB1bmF3
YXJlIG9mIGhvdwo+Pj4+IG11Y2ggdGhlIGZpZWxkIG1heSBoYXZlIGJlZW4gcGF0Y2hpbmcgdGhp
bmdzIG91dC4KPj4+Pgo+Pj4+IFRoZSBkZWZhdWx0IDMyTUIgbWVtb3J5IGxpbWl0cyBpbiBmcV9j
b2RlbCBjb21lcyBmcm9tIHRoZSBzdHJlc3NpbmcKPj4+PiBhYm91dCAxMEdpZ0UgbmV0d29ya2lu
ZyBmcm9tIGdvb2dsZS4gNE1CIGlzIGxpbWl0IGluIG9wZW53cnQsCj4+Pj4gd2hpY2ggaXMgc3Vp
dGFibGUgZm9yIH4xR2JpdCwgYW5kIGlzIHNvcnQgb2YgdGhlcmUgIGR1ZSB0byA4MDIuMTFhYydz
Cj4+Pj4gbWF4aW11bSAoaW1wb3NzaWJsZSB0byBoaXQpIG9mIGEgdHhvcCB0aGF0IGxhcmdlLgo+
PiBJIGRpZCBraW5kIG9mIGNvbmZsYXRlICJxb3MgKyBmcV9jb2RlbCIgdnMgd2lmaSBpbiB0aGlz
IG1lc3NhZ2UuIEl0Cj4+IGxvb2tzIGxpa2UgeWVyIHN0YXlpbmcgd2l0aCBtZS4KPj4KPj4+PiBT
b21ldGhpbmcgYXMgc21hbGwgYXMgMjU2SyBpcyBlc3NlbnRpYWxseSBhYm91dCAxMjggZnVsbCBz
aXplIHBhY2tldHMKPj4+PiAoYW5kIG9mdGVuLCBhY2tzIGZyb20gYW4gZXRoZXJuZXQgZGV2aWNl
J3MgcnggcmluZyBlYXQgMmspLgo+Pj4gd2hhdCBpIG1pc3MgaW4gbWFjODAyMTEgaXMgdGhlIGZv
bGxvd2luZyBvcHRpb24gImZxX2NvZGVsID0gb2ZmIgo+Pj4gaXRzIGVzc2VudGlhbCBhbmQgaSB3
aWxsIGRlZmluaXRseSB3b3JrIG9uIGEgcGF0Y2ggdG8gZGVhbCB3aXRoIHRoaXMKPj4+IHdheSBm
b3IgbG93IG1lbW9yeSA4MDIuMTFuIHBsYXRmb3Jtcy4KPj4gV2VsbCwgaXQgd291bGQgYmUgbXkg
aG9wZSB0aGF0IHR1cm5pbmcgaXQgb2ZmIHdvdWxkIEEpIG5vdCBoZWxwIHRoYXQKPj4gbXVjaCBv
biBtZW1vcnkgb3IgY3B1IGFuZCBCKSBzaG93IHN1Y2ggYSBkcmFtYXRpYyByZWR1Y3Rpb24gaW4K
Pj4gbXVsdGktc3RhdGlvbiBwZXJmb3JtYW5jZSB0aGF0IHlvdSdkIGltbWVkaWF0ZWx5IHR1cm4g
aXQgb24gYWdhaW4uCj4gaXNudCBpdCBiZXR0ZXIgdG8gaGF2ZSBhIHdvcmtpbmcgcGxhdGZvcm0g
d2l0aCBsZXNzIHBlcmZvcm1hbmNlIHRoYW4gYSAKPiBjcmFzaGluZyBwbGF0Zm9ybSB3aXRoIG5v
IHBlcmZvcm1hbmNlPwo+IGkgbWVhbiBpIGNhbiB1c2VyIG9sZGVyIG1hYzgwMjExIHZlcnNpb25z
IHdpdGhvdXQgdGhhdCBpc3N1ZSBvbiBhIAo+IHR5cGljYWwgbmFub3N0YXRpb24gMi81IHdoaWNo
IGlzIG9mdGVuIHVzZWQganVzdCBhcyBDUEUgZGV2aWNlCgpTbyBiZWZvcmUgdGhlIHF1ZXVlaW5n
IHBhdGNoZXMgdG8gbWFjODAyMTEsIHRoZSBtYXhpbXVtIHBhY2tldCBxdWV1ZQpzaXplIGZvciBh
dGg5ayB3YXMgM01CIGluIHRvdGFsLCBvciAyLjJNQiBpZiBvbmx5IGEgc2luZ2xlIEFDIHdhcyB1
c2VkCm9uIHRoZSBXaUZpIGxpbmsgKHRoYXQncyAxMjggcGFja2V0cyBpbiB0aGUgZHJpdmVyICsg
MTAwMCBpbiB0aGUKcGZpZm9fZmFzdCBxZGlzYyAqIDIwNzQgYnl0ZXMgZm9yIHRoZSB0cnVlc2l6
ZSBvZiBhIGZ1bGwtc2l6ZSBwYWNrZXQpLgpXaGVyZWFzIG5vdyB0aGUgZGVmYXVsdCBpcyA0TUIg
Zm9yIGEgbm9uLXZodCBkZXZpY2UuIFNvIGl0J3Mgbm90CmFjdHVhbGx5IHRoYXQgYmlnIG9mIGEg
ZGlmZmVyZW5jZSwgYW5kIGFzIHlvdSd2ZSBhbHJlYWR5IGRpc2NvdmVyZWQgdGhlCmRlZmF1bHRz
IGNhbiBiZSBjaGFuZ2VkLgoKV291bGQgaXQgYmUgaGVscGZ1bCB0byBhZGQgc3VwcG9ydCBmb3Ig
c2V0dGluZyB0aGUgbWVtb3J5IGxpbWl0IGluCmhvc3RhcGQgKHRvIGF2b2lkIGhhdmluZyB0byBw
YXRjaCB0aGUga2VybmVsIGRlZmF1bHQpPwoKPiBidXQgd2l0aCBjdXJyZW50IG1hYzgwMjExIHZl
cnNpb25zIChjdXJyZW50IG1lYW5zIGxhc3QgMi0zIHllYXJzKS4gdGhleSAKPiBhcmUganVzdCB1
bnN0YWJsZSBhbmQgcnVubmluZyBvdXQgb2YgbWVtb3J5IGFmdGVyIGEgd2hpbGUKPiB0aGUgb25s
eSB0aGluZyB3aGljaCBoZWxwZWQgd2FzIGN1dHRpbmcgb2YgdGhlIG1lbW9yeSBsaW1pdCBvZiBm
cV9jb2RlbCAKPiBpbnNpZGUgbWFjODAyMTEKPiBpIGFsc28gaGF2ZSBhbm90aGVyIGZhbmN5IHRl
c3R1bml0IHdoaWNoIGlzIGEgbGlua3N5cyB3cnQ0MDAgd2l0aCAzMiBtYiAKPiByYW0gYW5kIDIg
YXRoOWsgYmFzZWQgd2lmaSBjaGlwc2V0cy4gbm8gaG9wZSBoZXJlIGZvbnIgcnVubmluZyBzdGFi
bGUKPiBmb3Igb25seSA1IG1pbnV0ZXMgZXZlbiB3aXRoIGEgc2luZ2xlIGNvbm5lY3Rpb24gdW5k
ZXIgbG9hZCAobXkgY3Jhc2hpbmcgCj4gdGVzdCBpcyBydW5uaW5nIGEgaGR0diBpcHR2IHN0cmVh
bSBjb252ZXJ0ZWQgdG8gdW5pY2FzdCB1c2luZyBhIAo+IHN0YXRlbGVzcyBlb2lwIHR1bm5lbCkK
Pgo+PiBJIHRyeSB0byBlbmNvdXJhZ2UgZm9sayB0byBydW4gdGhlIHJ0dF9mYWlyIHRlc3RzIGlu
IGZsZW50IHdoZW4KPj4gdHdpZGRsaW5nIHdpdGggd2lmaS4gVGhvc2UgcmVhbGx5IHNob3dzIGhv
dyBiYWQgdGhpbmdzIGFyZSB3aGVuIHlvdQo+PiBkb24ndCBoYXZlIEFURiArIEZRICsgUGVyIHN0
YXRpb24gYWdncmVnYXRpb24gYW5kIGxvdHMgb2YKPj4gY2xpZW50cy4gU2luZ2xlIHRocmVhZGVk
IHRlc3RzIGFyZSBtaXNsZWFkaW5nLgo+IGkga25vdyBidXQgZXZlbiBzaW5nbGUgdGhyZWFkZWQg
dGVzdHMgYXJlbnQgd29ya2luZyBnb29kIG9uIHN1Y2ggCj4gZGV2aWNlcy4gc28gdGhlcmUgaXMg
bm8gbmVlZCB0byB0YWxrIGFib3V0IHRoZSBiZW5lZml0cyBvZiBhdGYsZnFfY29kZWwgZXRjLgo+
IGJ1dCB0aGVyZSBpcyBuZWVkIHRvIHRhbGsgYWJvdXQgY29uZmlndXJhYmxlIHVzZSBvZiBpdCB3
aGljaCBhbHNvIGFsbG93cyAKPiB0byBkaXNhYmxlIGl0IGlmIHJlcXVpcmVkLgoKRGlzYWJsaW5n
IHRoZSBmcSBwYXJ0IHdvbid0IGFjdHVhbGx5IGdhaW4geW91IG11Y2ggaW4gdGVybXMgb2YgbWVt
b3J5CnVzYWdlLCB0aG91Z2gsIGFzIG1vc3Qgb2YgaXQgaXMgcGFja2V0IG1lbW9yeSB3aGljaCBp
cyBhbHJlYWR5CmNvbmZpZ3VyYWJsZS4KClRoZSBvbmUgZXhjZXB0aW9uIHRvIHRoaXMgaXMgdGhl
IHN0YXRpYyBvdmVyaGVhZCBvZiAnc3RydWN0IGZxX2Zsb3cnLCBvZgp3aGljaCBtYWM4MDIxMSBj
dXJyZW50bHkgYWxsb2NhdGVzIDRrLiBUaGF0J3MgMzAwayBvZiBtZW1vcnkgd2hpY2ggaXMKY3Vy
cmVudGx5IG5vdCBjb25maWd1cmFibGUuIEJ1dCB0aGF0IGNvdWxkIGJlIGZpeGVkIDopCgotVG9r
ZQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1h
aWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZl
cmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
