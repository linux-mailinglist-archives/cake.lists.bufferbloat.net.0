Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id BE5459689C
	for <lists+cake@lfdr.de>; Tue, 20 Aug 2019 20:31:53 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id AD3D03CB38;
	Tue, 20 Aug 2019 14:31:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1566325912;
	bh=WxZtZEH/09HFU1mJej9RheVYdForqntd6Wu1SuhdjmY=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bZRlVTDo8ZIjN5nJiAGnvIFqi05g8fZ6SyFyDLAC7JYqOrBhVQ4qeR2uGRcdsa6FR
	 zNnps+uhgIqpQkAJ10KS6pP46o7nATABz14MdAJ6Qa+CsjFNTI+Xc7Nk5Huzo9kKvo
	 P7ehqR+ZwHn10Ges4TUm1BfxUiQnRahZJHCg7zXJ3znhhaPMg4XCl3OBSp1PI7ZkEM
	 bwbiR3JGU25NzA81mX6IatvFR1Bo9n2Jql5umPXIilzpML96UNcLx24WvQ+gqmy/U2
	 dAYYsSiSvi6nFx2oQ+FBT54HtiTM3hW+yiekmHUn/inQr+XJl57W3Fe7GXgUXcOSCe
	 4EcjocHf8D8iQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id B2CB53B2A4
 for <cake@lists.bufferbloat.net>; Tue, 20 Aug 2019 14:31:51 -0400 (EDT)
Received: from mail-lj1-f199.google.com (mail-lj1-f199.google.com
 [209.85.208.199])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id CB5B32A09AC
 for <cake@lists.bufferbloat.net>; Tue, 20 Aug 2019 18:31:50 +0000 (UTC)
Received: by mail-lj1-f199.google.com with SMTP id n2so1059152lji.13
 for <cake@lists.bufferbloat.net>; Tue, 20 Aug 2019 11:31:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=ucZ0kc/xALYACgRhsTNnCok6YOofAVVRJAVDWqV+E1Y=;
 b=gR0RG2uoHzVckx0kbCp6AXGPC0iVQ9B0MhH5iQKbHBJpWZpL83WnX5owW1fbQzaq0s
 lqHz+GTzSudxL2am+oa3FzJeP3RV5Y3DliNdCsWgmF5Gw4AKKxCfpwZITYn6Hq46X24z
 dFpx7fXtMopR9ilbGpcXsTGAXj+6+UBDbCzjOwHoQmE25t740LZ1wwr8ydkqr8zsQVZq
 WtwgtVE9zl0lSNGD1NcPLQY13+9puMqDQcku+z2tmnWkOwOpDzghyOE7d7wzYznk5LUC
 jDPbb0n0oC1wAiIHb4kpkdTEhwik/wmWSSX1hts9i320wxVakZBYGaZwYsUNTPfNLXrc
 eC5Q==
X-Gm-Message-State: APjAAAVQcq1qSRyAcoJWIzoDWdZ6Tb1l54WuI63diOK/Eb5jfP5R98ex
 XrWZB4hml1ai7074V5GgJoMAEdyQHGGL76GJu98GcIBLZCzl2ZKi5pWDw5rTSF/nW0vTtPi2MvE
 NB9klYAMR95BqlEW1ZzatDg==
X-Received: by 2002:a2e:804b:: with SMTP id p11mr2898147ljg.172.1566325909229; 
 Tue, 20 Aug 2019 11:31:49 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzN+2es6Cf00AuFC4DnZGqi0lxCBNPfmEy4bv3ssrSS2b1y4Bdqb86++feo97mt9pZf9a7p/g==
X-Received: by 2002:a2e:804b:: with SMTP id p11mr2898136ljg.172.1566325908947; 
 Tue, 20 Aug 2019 11:31:48 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk (borgediget.toke.dk.
 [85.204.121.218])
 by smtp.gmail.com with ESMTPSA id f23sm2888952lja.25.2019.08.20.11.31.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 11:31:48 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 2874F181CE4; Tue, 20 Aug 2019 20:31:47 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Sebastian Gottschall <s.gottschall@newmedia-net.de>,
 Dave Taht <dave.taht@gmail.com>
In-Reply-To: <74bccc2b-b805-255f-b6a7-83ade9af6765@newmedia-net.de>
References: <CAA93jw4FDjYjxxStyzMu8eCz_6Ezcumg-iZaYeM3kBZ5da8MBQ@mail.gmail.com>
 <fc64c772-d85c-deba-a0e4-4e590cfb76ee@newmedia-net.de>
 <CAA93jw4Fm=uY08A3XHWh3d=OKNfraCeYHwFGtAdPH7a51vG6WA@mail.gmail.com>
 <384866b4-4c91-cf2c-c267-ee4036e5fbf7@newmedia-net.de>
 <87wof7sriw.fsf@toke.dk>
 <6782ec15-30eb-63b0-f54f-376c5e6b840b@newmedia-net.de>
 <87tvabsp99.fsf@toke.dk>
 <74bccc2b-b805-255f-b6a7-83ade9af6765@newmedia-net.de>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Tue, 20 Aug 2019 20:31:47 +0200
Message-ID: <87r25fsn70.fsf@toke.dk>
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
czoKCj4+PiB3ZSBhcmUgYWxyZWFkeSB1c2luZyBmaWx0ZXJzLiB5ZXMuIGl0cyBqdXN0IHRoYXQg
Y2FrZSBpcyBhY3RpbmcgYWx3YXlzCj4+PiBhcyByb290IGFuZCB3ZSBoYXZlIGRpZmZlcmVudCBz
b3J0cyBvZiBxb3MgY29uZmlndXJhdGlvbnMuIHNvIHlvdSBoYXZlCj4+PiB3YW4uIGJ1dCB3ZSBt
YXkgaGF2ZSBtdWx0aXBsZSBsYW4gaW50ZXJmYWNlcyB3aXRoIGluZGl2aWR1YWwgcW9zCj4+PiBz
ZXR0aW5ncy4gdGhlIHNhbWUgZm9yIG1hYyAvIGlwIGJhc2VkIHVzZXIgc2V0dGluZ3MuIHNvIGlu
IGZhY3Qgd2UgbmVlZAo+Pj4gdG8gY3JlYXRlIGEgaW5kaXZpZHVhbCBxZGlzYyBmb3IgZWFjaCBv
ZiB0aGVzZSBzZXR0aW5nIHR5cGVzIGluIHdvcnN0Cj4+PiBjYXNlLCBidXQgaW4gdGhhdCBjYXNl
IHdlIGNhbm5vdCB0YWtlIGluIGFjY291bnQgdGhlIGdsb2JhbCBhdmFpbGFibGUKPj4+IGJhbmR3
aWR0aCBhbnltb3JlLgo+PiBBaCwgcmlnaHQsIEkgc2VlLiBTbyB0aGlzIGlzIHRoaW5ncyBsaWtl
IHVzZXJzIHdhbnRpbmcgdG8gbGltaXQgYQo+PiBzcGVjaWZpYyB0eXBlIG9mIHRyYWZmaWMgdG8g
YSBjZXJ0YWluIGJhbmR3aWR0aD8KPiBiYXNpY2x5IHllcy4gdGhlcmUgYXJlIG11bHRpcGxlIHdh
eXMuIHBsYWluIHRyYWZmaWMgc2hhcGluZyBieSBsb2NhbCAKPiBpbnRlcmZhY2UgbmFtZSwgYnkg
bG9jYWwgbWFjLCBieSBsb2NhbCBpcC9uZXQKPiBhbmQgaW4gYWRkaXRpb24gdGhlcmUgaXMgc2hh
cGluZyBieSBwb3J0IGJhc2VkIG9yIGRwaSBiYXNlZCBwYWNrZXQgCj4gZGV0ZWN0aW9uIGFuZCBz
aW5jZSBlYWNoIGluc3RhbmNlIG9mIGNha2UgZG9lc250IGtub3cgb2YgYW55IG90aGVyCj4gdXNl
IG9mIGNha2UgcWRpc2NzIGl0cyBnZXR0aW5nIGNvbXBsaWNhdGVkLiBidXQgd2UganVzdCBzdGFy
dGVkIHdpdGggCj4gd29ya2luZyBvbiBpdC4gaSdtIHN1cmUgaSBmaW5kIGEgc29sdXRpb24gZm9y
IGl0CgpEbyBsZXQgdXMga25vdyBpZiB5b3UgZG8gOikKCkhvd2V2ZXIsIEknZCBhbHNvIHBvaW50
IG91dCB0aGF0IHdoZW4gcnVubmluZyBDQUtFIGEgbG90IG9mIHRoZXNlIGtpbmRzCm9mIHNldHVw
cyBiZWNvbWUgc2ltcGx5IHJlZHVuZGFudC4gRm9yIGhvbWUgbmV0d29ya3MgbW9zdCBvZiB0aGUg
c2V0dXBzCkkgaGF2ZSBzZWVuIHdpdGggc3VjaCBydWxlLWJhc2VkIHNoYXBpbmcgaXMgc2ltcGx5
IHRoZXJlIHRvIHBhcGVyIG92ZXIKdGhlIHVuZGVybHlpbmcgYnVmZmVyYmxvYXQgaXNzdWUuIE9u
Y2UgeW91IHNvbHZlIHRoYXQgeW91IGRvbid0IHJlYWxseQpuZWVkIGFsbCB0aGUgcG9saWN5LWJh
c2VkIHN0dWZmLgoKTm93LCB0aGVyZSBhcmUgb2YgY291cnNlIGV4Y2VwdGlvbnMgdG8gdGhpcyB3
aGVyZSBhIHN0cmljdCBydWxlLWJhc2VkCnNoYXBpbmcgKmlzKiByZWFsbHkgbmVlZGVkOyBidXQg
SFRCIGFscmVhZHkgcHJvdmlkZXMgdGhpcyBpbiB0aGUga2VybmVsLAphbmQgd2UgZG9uJ3Qgd2Fu
dCB0byByZS1pbnZlbnQgdGhhdCwgc28gSSdtIG5vdCBzdXJlIHdlJ2xsIGV2ZXIgc3VwcG9ydAp0
aGlzIHByb3Blcmx5IGluIENBS0UsIHNhZGx5Li4uCgotVG9rZQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3Rz
LmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9j
YWtlCg==
