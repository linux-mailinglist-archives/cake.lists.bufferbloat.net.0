Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D7C3968C1
	for <lists+cake@lfdr.de>; Tue, 20 Aug 2019 20:49:25 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 278223CB38;
	Tue, 20 Aug 2019 14:49:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1566326964;
	bh=+WHvdjmxwOKtpUCT3Y1udJq7FyIVhU3/b8FD9hfbAws=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AKKJB9yalDoBu4gVXh4NjZanQkI/vtkaXpGg8UUjDMzdCkjkr8BzeZyIyV863XxNK
	 l6afTsIH4Le2nzqDhi3DjqBdAVV0Tqj8I9dFaNUO0JmwP2CIy8IfC06VrgbMZJPpFK
	 XOcV7IpfL9uSvpXNgDykzAiPsNYzYWjnK9ADwRyI/HvETjlzd1aatnDIzvdQ3Qgmop
	 icEFrKfEmhQL48GQe6vvyKxtCEq5eG+lCOqGt/jJDJ0lp6QKdD/jgTmYpPcdf/wE65
	 wf5frTfoUxgUp3vJmmpZZr3of4KgRNRI7rkED7mJKZ2oMiGhZaO1Gfh1z90XMdeP8e
	 S/Ld1JJoBRngg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id F22493B2A4
 for <cake@lists.bufferbloat.net>; Tue, 20 Aug 2019 14:49:22 -0400 (EDT)
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 08DF5C055673
 for <cake@lists.bufferbloat.net>; Tue, 20 Aug 2019 18:49:22 +0000 (UTC)
Received: by mail-ed1-f72.google.com with SMTP id u3so4668559edm.13
 for <cake@lists.bufferbloat.net>; Tue, 20 Aug 2019 11:49:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=5K/Wjtf+Cf1AllF7LHMu1I5QA6cdMcu2S9fteY/U3fE=;
 b=pQqgkOA3fK1QKzlQZ8r2EIVzB7rPU5Qc+VNkGbSm8RWUiah3xgtUa2sJWHHDEMfpCk
 vQzPaxmMqkk5lNixG4CZWDw29o6Wwu9wg3ShfTCV4z9Rm9Ght2jQMA+VcwyX0zrqBew2
 gBJ6c1Sgffs19kbdcrINeKxVWEmkZ/AXJRRX11KsAVpAV9Sn1bnW23c+lQ+bKeaLqa6C
 D7s9vl6Fc1tlvsE8lmOThTmFFxf9kKWCq7XON6LDhDT3oRUOr7gfrXr2c6YdSMEcqYmA
 x/GkqNS6dXcVy2nrWYVm4hHGsb1mOs3K1xmFntcESDZyWnOPksmtVmwuGptAMPl5VFtl
 ucMQ==
X-Gm-Message-State: APjAAAXkwH3nEPULLmPZx1psR4SEClQEH3sbWeUX/P8GkCTplGtAVhUG
 78NehcKqQOftQLxzbXZCul+R4RmDzmI0jvVsebAvdqG1eA3b3k2DKc9YXZzR/SbvmAjeMqueUcT
 S9CIXhv9m9FkXqJKGGILNlg==
X-Received: by 2002:aa7:d153:: with SMTP id r19mr25126396edo.68.1566326960798; 
 Tue, 20 Aug 2019 11:49:20 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxEYoG+eVqoVUaWUsDZ15tMW7aS4GSKAFI17NjFRCnlh5u5IWTr2S+8CxD3hWqo9S7c61Bdpw==
X-Received: by 2002:aa7:d153:: with SMTP id r19mr25126383edo.68.1566326960645; 
 Tue, 20 Aug 2019 11:49:20 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a00:7660:6da:443::2])
 by smtp.gmail.com with ESMTPSA id gz5sm2718519ejb.21.2019.08.20.11.49.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 11:49:19 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 51818181CE4; Tue, 20 Aug 2019 20:49:19 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Sebastian Gottschall <s.gottschall@newmedia-net.de>,
 Dave Taht <dave.taht@gmail.com>
In-Reply-To: <b52b087d-c21c-e190-1bc7-a06e5fe6305f@newmedia-net.de>
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
X-Clacks-Overhead: GNU Terry Pratchett
Date: Tue, 20 Aug 2019 20:49:19 +0200
Message-ID: <87o90jsmds.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] cake in dd-wrt
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

U2ViYXN0aWFuIEdvdHRzY2hhbGwgPHMuZ290dHNjaGFsbEBuZXdtZWRpYS1uZXQuZGU+IHdyaXRl
czoKCj4gQW0gMjAuMDguMjAxOSB1bSAyMDozMSBzY2hyaWViIFRva2UgSMO4aWxhbmQtSsO4cmdl
bnNlbjoKPj4gU2ViYXN0aWFuIEdvdHRzY2hhbGwgPHMuZ290dHNjaGFsbEBuZXdtZWRpYS1uZXQu
ZGU+IHdyaXRlczoKPj4KPj4+Pj4gd2UgYXJlIGFscmVhZHkgdXNpbmcgZmlsdGVycy4geWVzLiBp
dHMganVzdCB0aGF0IGNha2UgaXMgYWN0aW5nIGFsd2F5cwo+Pj4+PiBhcyByb290IGFuZCB3ZSBo
YXZlIGRpZmZlcmVudCBzb3J0cyBvZiBxb3MgY29uZmlndXJhdGlvbnMuIHNvIHlvdSBoYXZlCj4+
Pj4+IHdhbi4gYnV0IHdlIG1heSBoYXZlIG11bHRpcGxlIGxhbiBpbnRlcmZhY2VzIHdpdGggaW5k
aXZpZHVhbCBxb3MKPj4+Pj4gc2V0dGluZ3MuIHRoZSBzYW1lIGZvciBtYWMgLyBpcCBiYXNlZCB1
c2VyIHNldHRpbmdzLiBzbyBpbiBmYWN0IHdlIG5lZWQKPj4+Pj4gdG8gY3JlYXRlIGEgaW5kaXZp
ZHVhbCBxZGlzYyBmb3IgZWFjaCBvZiB0aGVzZSBzZXR0aW5nIHR5cGVzIGluIHdvcnN0Cj4+Pj4+
IGNhc2UsIGJ1dCBpbiB0aGF0IGNhc2Ugd2UgY2Fubm90IHRha2UgaW4gYWNjb3VudCB0aGUgZ2xv
YmFsIGF2YWlsYWJsZQo+Pj4+PiBiYW5kd2lkdGggYW55bW9yZS4KPj4+PiBBaCwgcmlnaHQsIEkg
c2VlLiBTbyB0aGlzIGlzIHRoaW5ncyBsaWtlIHVzZXJzIHdhbnRpbmcgdG8gbGltaXQgYQo+Pj4+
IHNwZWNpZmljIHR5cGUgb2YgdHJhZmZpYyB0byBhIGNlcnRhaW4gYmFuZHdpZHRoPwo+Pj4gYmFz
aWNseSB5ZXMuIHRoZXJlIGFyZSBtdWx0aXBsZSB3YXlzLiBwbGFpbiB0cmFmZmljIHNoYXBpbmcg
YnkgbG9jYWwKPj4+IGludGVyZmFjZSBuYW1lLCBieSBsb2NhbCBtYWMsIGJ5IGxvY2FsIGlwL25l
dAo+Pj4gYW5kIGluIGFkZGl0aW9uIHRoZXJlIGlzIHNoYXBpbmcgYnkgcG9ydCBiYXNlZCBvciBk
cGkgYmFzZWQgcGFja2V0Cj4+PiBkZXRlY3Rpb24gYW5kIHNpbmNlIGVhY2ggaW5zdGFuY2Ugb2Yg
Y2FrZSBkb2VzbnQga25vdyBvZiBhbnkgb3RoZXIKPj4+IHVzZSBvZiBjYWtlIHFkaXNjcyBpdHMg
Z2V0dGluZyBjb21wbGljYXRlZC4gYnV0IHdlIGp1c3Qgc3RhcnRlZCB3aXRoCj4+PiB3b3JraW5n
IG9uIGl0LiBpJ20gc3VyZSBpIGZpbmQgYSBzb2x1dGlvbiBmb3IgaXQKPj4gRG8gbGV0IHVzIGtu
b3cgaWYgeW91IGRvIDopCj4+Cj4+IEhvd2V2ZXIsIEknZCBhbHNvIHBvaW50IG91dCB0aGF0IHdo
ZW4gcnVubmluZyBDQUtFIGEgbG90IG9mIHRoZXNlIGtpbmRzCj4+IG9mIHNldHVwcyBiZWNvbWUg
c2ltcGx5IHJlZHVuZGFudC4gRm9yIGhvbWUgbmV0d29ya3MgbW9zdCBvZiB0aGUgc2V0dXBzCj4+
IEkgaGF2ZSBzZWVuIHdpdGggc3VjaCBydWxlLWJhc2VkIHNoYXBpbmcgaXMgc2ltcGx5IHRoZXJl
IHRvIHBhcGVyIG92ZXIKPj4gdGhlIHVuZGVybHlpbmcgYnVmZmVyYmxvYXQgaXNzdWUuIE9uY2Ug
eW91IHNvbHZlIHRoYXQgeW91IGRvbid0IHJlYWxseQo+PiBuZWVkIGFsbCB0aGUgcG9saWN5LWJh
c2VkIHN0dWZmLgo+IGl0cyBub3QganVzdCBhYm91dCBwb2xpY3kgdG8gZ2V0IGFsbCBtYW5hZ2Vk
LiBidXQgdGhlIHBvaW50IGlzIHRoYXQgYSAKPiBoZWF2eSBiaXR0b3JyZW50IGRvd25sb2FkZXIg
d2lsbCBzdGlsbCBzdGVhbCB0aGUgYmFuZHdpZHRoIG9mIG15IHNjcCAKPiBzZXNzaW9uLgoKVGhp
cyBpcyBpbmRlZWQgYSBjb25jZXJuIHNvbWV0aW1lcywgeWVhaCwgYW5kIGFjdHVhbGx5IHRoaXMg
ZXhhY3QgY2FzZQppcyB0aGUgb3JpZ2luYWwgbW90aXZhdGlvbiBmb3IgdGhlIGhvc3QtYmFzZWQg
ZmFpcm5lc3MgZmVhdHVyZSBpbiBDQUtFIDopCgo+IHNvIGl0cyBhYm91dCBjb250cm9sIGFuZCBu
b3QganVzdCBhYm91dCB0aGUgZmxvdyBtYW5hZ2VtZW50Cj4gaXMgYWJvdXQgbGltaXRpbmcgcG9y
dHMgdG8gYSBzcGVjaWZpYyBiYW5kd2lkdGguIGZvciBpbnN0YW5jZS4gaSBoYXZlIGEgCj4gY29u
Y2VydCB2ZW51ZSBhbmQgaSBsaW1pdCB0aGUgYmFja3N0YWdlIG5ldHdvcmsgdG8gYSBjZXJ0YWlu
IG1heGltdW0gCj4gcmF0ZSBzaW5jZSBhIG5lZWQgYSBidWRnZWQgZm9yIG90aGVyIG5ldHdvcmtz
Cj4gc28gaSBsaW1pdCB0aGUgZXRoZXJuZXQgcG9ydCBvZiB0aGlzIG5ldHdvcmsgb24gdGhlIG1h
aW4gcm91dGVyIHRvIGxldHMgCj4gc2F5IDEwIG1iaXQgb3Igc29tZXRoaW5nIGxpa2UgdGhhdCBw
cmlvcml6ZSB0b3JyZW50IGFuZCBvdGhlciBiYWQgCj4gc2VydmljZXMgdG8gYnVsay4gd2hpY2gg
anVzdCB3b3JrcyBnb29kIGZvciBpbnRlcm5ldC4KPiBzbyB3ZSBoYXZlIGVub3VnaCBiYW5kd2lk
dGggb24gb3VyIG90aGVyIGNhYmxlcyBmb3IgZG9pbmcgNGsgc3RyZWFtcy4KPiBkZC13cnQgaXMg
bm90IGp1c3QgdXNlZCBvbiB0aGVzZSBwbGFzdGljIHJvdXRlcnMgZm9yIGhvbWUgdXNlcnMuIHRo
aXMgaXMgCj4gb25lIG9wdGlvbiBhbmQgd29ya3MgZ3JlYXQgd2l0aG91dCBtdWNoIHFvcyBjb25m
aWd1cmF0aW9uLiB5b3UncmUgcmlnaHQuIAo+IGJ1dCBpZiBpdHMgdHVybmluZyBtb3JlIGNvbXBs
ZXggYW5kIHByb2Zlc3Npb25hbAo+IGl0cyBub3QgZW5vdWdoIGFueW1vcmUuCgpTdXJlLCBidXQg
dGhvc2UgYXJlIG5vdCBDQUtFJ3MgdGFyZ2V0IGF1ZGllbmNlLCBzbyB0byBzcGVhay4KCkknbSBu
b3Qgc2F5aW5nIHRob3NlIHVzZSBjYXNlcyBhcmUgbm90IGxlZ2l0aW1hdGUsIEknbSBqdXN0IHNh
eWluZyB5b3UKbWF5IGZpbmQgaXQgZGlmZmljdWx0IHRvIHNob2UtaG9ybiBDQUtFIGludG8gdGhl
bTsgd2hpY2ggaXMga2luZGEKZGVsaWJlcmF0ZS4uLgoKPj4gTm93LCB0aGVyZSBhcmUgb2YgY291
cnNlIGV4Y2VwdGlvbnMgdG8gdGhpcyB3aGVyZSBhIHN0cmljdCBydWxlLWJhc2VkCj4+IHNoYXBp
bmcgKmlzKiByZWFsbHkgbmVlZGVkOyBidXQgSFRCIGFscmVhZHkgcHJvdmlkZXMgdGhpcyBpbiB0
aGUga2VybmVsLAo+PiBhbmQgd2UgZG9uJ3Qgd2FudCB0byByZS1pbnZlbnQgdGhhdCwgc28gSSdt
IG5vdCBzdXJlIHdlJ2xsIGV2ZXIgc3VwcG9ydAo+PiB0aGlzIHByb3Blcmx5IGluIENBS0UsIHNh
ZGx5Li4uCj4gdGhpcyBpcyB3aGF0IHdlIGFyZSBhbHNvIGRvaW5nLiBjYWtlIGlzIGZpbmFsbHkg
anVzdCBhIG9wdGlvbi4geW91IGNhbiAKPiBzZWxlY3QgbXVsdGlwbGUgc2NoZWR1bGVycyBhdCB0
aGUgZ3VpLiBpbmNsdWRpbmcgY29kZWwuIGZxX2NvZGVsLCAKPiBmcV9jb2RlbF9mYXN0LCBjYWtl
ICwgcGllIGV0Yy4KClJpZ2h0LiBXaGF0IGFyZSB5b3Ugc2V0dGluZyBhcyB0aGUgZGVmYXVsdCwg
QlRXPwoKLVRva2UKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9s
aXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
