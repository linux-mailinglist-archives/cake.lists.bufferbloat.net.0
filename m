Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id A10FB1E0AEC
	for <lists+cake@lfdr.de>; Mon, 25 May 2020 11:43:05 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 76A6A3CB39;
	Mon, 25 May 2020 05:43:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1590399783;
	bh=DAFHG6x4Vn/nFwoI9mF50ocPtgNh5hkzVml3Pzb0IAU=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CXzvWhhKRPaJqxvMERQkQBmiG6EvIx2pNpKGNR+OEtH0qo23KCSzBrTc40ZfzHcvU
	 U+4DAqNP5MVySe5sQN617vMuKFgmktpldVOv56UmqNusIBnY2WzbvSY+FmVl06CAs/
	 3T78/fps1Kt9ztNaMj4qLlKUy1LwK60zogaENm/wTLNdrX8epEVyGFSuDRdPPdL/Kt
	 0h9t6/U9rok6oDY/uJTykDuMVB0i9BZoGLjC+OknzF6xOWDG6LTLeS2vW2X+90sXmi
	 Vr0wkvvFJ/qX9K2YKWN1GisGx84nKQpEuZFTU6o6twjSfLBFPG5Ef3JeQPojjlWwqJ
	 riR+XtkIOJ9mQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com
 [IPv6:2a00:1450:4864:20::234])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 977E73B29D
 for <cake@lists.bufferbloat.net>; Mon, 25 May 2020 05:43:02 -0400 (EDT)
Received: by mail-lj1-x234.google.com with SMTP id c11so17895962ljn.2
 for <cake@lists.bufferbloat.net>; Mon, 25 May 2020 02:43:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=5Bg/55HY6b5xt3DAP/QXmPviwuecdB1Xirdc8qw79JQ=;
 b=Pk0azXJWzlwcejy328MP5waen+AOKdeqZmk3os5xaCg1WxMAsPtQv73vS87EtQekSP
 GaY2MhIuEqUExt+5Rzhti/23F2aNEjTlL09Al9wRedc1kyZxfpe6ZiU53FnM4v1+9iDq
 3gmRNaY/rrPSq2tA9r0Vep/DU/kNkPIoXqSK9Wbuzcw2p00d7fntkfFD0zecca1U9a2w
 cgNwOU1wD4UbMiKl0HpV75M+uNlKQNvJn5rClXUJqlLmJLJJsL4ZhYzndFUi2uGukEOf
 Ni+sj1whxWyKP0T608DfSCPu2thinekR7FynuyRBB5y47wZogTS2FaGTNf5yZUA2kcKE
 HfTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=5Bg/55HY6b5xt3DAP/QXmPviwuecdB1Xirdc8qw79JQ=;
 b=Rfkba1ZWj0PpoHOlznrZUYVt2AY+mrJKXIwOM90q7cm4SM+QRnA5xC44PZm7I/8s5K
 jstRtk/1nZuNGcyZvILHgQrMg4RDb1FZBWLb2FjYWN5+TVGPcK3SMhf0ydo7NEaPtFoF
 Gu3JlF0loZ8GRm2+nc+4inyVTGmnhixzop4U9yQ53WCTHJwwJPUFHyTTIQ+CgiFnvrLK
 qP/df1OygUe3afPYLQnnSqprSDWpyBiOGwZmFQQ+bXfoJabvi5Y5f+iFPR61zRca6dT2
 tcdoL0QONWb83oDa1qpyDDDKIPQqdfGlKvCdy9kbr283YSY9RKSklsQSRqJlze9K2YUJ
 j3Tw==
X-Gm-Message-State: AOAM5304tG3JHhHbN3qZIk8vBAPW3z2FOROExNoMN3WfHZJiOAzTGCK/
 YsyPKLozT22im/0pmifxa0w=
X-Google-Smtp-Source: ABdhPJy1X2PKF+PK4vRhCbsDcN6EXrUI9N+URIt9oOOKmIdckL/pZS8Ugyudsx8N8aWvv7UrSr6iwA==
X-Received: by 2002:a2e:574e:: with SMTP id r14mr11891866ljd.411.1590399781257; 
 Mon, 25 May 2020 02:43:01 -0700 (PDT)
Received: from jonathartonsmbp.lan (83-245-237-52-nat-p.elisa-mobile.fi.
 [83.245.237.52])
 by smtp.gmail.com with ESMTPSA id c22sm4713566lfm.25.2020.05.25.02.42.59
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 25 May 2020 02:43:00 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.5\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <CAC8NkTCQQ=8Zy-YiYKP=8VLRzmrMH8g1ya1o=6iZAgY2vvbxAw@mail.gmail.com>
Date: Mon, 25 May 2020 12:42:58 +0300
Message-Id: <48938727-0CFF-4B72-B82B-49E0535E9B82@gmail.com>
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

PiBPbiAyNSBNYXksIDIwMjAsIGF0IDg6MTcgYW0sIEF2YWthc2ggYmhhdCA8YXZha2FzaDI2MUBn
bWFpbC5jb20+IHdyb3RlOgo+IAo+IFdlIGhhZCBhbm90aGVyIHF1ZXJ5IHdlIHdvdWxkIGxpa2Ug
dG8gcmVzb2x2ZS4gV2Ugd2FudGVkIHRvIHZlcmlmeSB0aGUgd29ya2luZyBvZiBhY2sgZmlsdGVy
IGluIG5zLTMsIAo+IHNvIHdlIGRlY2lkZWQgdG8gcmVwbGljYXRlIHRoZSBGaWcgNiBncmFwaCBp
biB0aGUgQ0FLRSBwYXBlcihodHRwczovL2llZWV4cGxvcmUuaWVlZS5vcmcvZG9jdW1lbnQvODQ3
NTA0NSkuIAo+IFdoaWxlIHRyeWluZyB0byBidWlsZCB0aGUgdG9wb2xvZ3kgd2UgcmVhbGl6ZWQg
dGhhdCB3ZSBkbyBub3Qga25vdyB0aGUgbnVtYmVyIG9mIHBhY2tldHMgb3IgYnl0ZXMgc2VudCBm
cm9tIAo+IHRoZSBzb3VyY2UgdG8gdGhlIGRlc3RpbmF0aW9uIGZvciBlYWNoIG9mIHRoZSBUQ1Ag
Y29ubmVjdGlvbnMgKCBXZSBhcmUgYXNzdW1pbmcgaXQgaXMgYSBwb2ludCB0byBwb2ludCBjb25u
ZWN0aW9uIHdpdGggNCBUQ1AgZmxvd3MpLiAKPiAKPiBDb3VsZCB3ZSBnZXQgYSBiaXQgbW9yZSBk
ZXRhaWxzIGFib3V0IGhvdyB0aGUgZXhwZXJpbWVudCB3YXMgY29uZHVjdGVkPwoKSSBiZWxpZXZl
IHRoaXMgd2FzIGNvbmR1Y3RlZCB1c2luZyB0aGUgUlJVTCB0ZXN0IGluIEZsZW50LiAgVGhpcyBv
cGVucyBmb3VyIHNhdHVyYXRpbmcgVENQIGZsb3dzIGluIGVhY2ggZGlyZWN0aW9uLCBhbmQgYWxz
byBzZW5kcyBhIHNtYWxsIGFtb3VudCBvZiBsYXRlbmN5IG1lYXN1cmluZyB0cmFmZmljLiAgT24g
dGhpcyBvY2Nhc2lvbiBJIGRvbid0IHRoaW5rIHdlIGFkZGVkIGFueSBzaW11bGF0ZWQgcGF0aCBk
ZWxheXMsIGFuZCBvbmx5IGltcG9zZWQgdGhlIHF1b3RlZCBhc3ltbWV0cmljIGJhbmR3aWR0aCBs
aW1pdHMgKDMwTWJwcyBkb3duLCAxTWJwcyB1cCkuCgo+IEFsc28gaXMgdGhpcyB0aGUgYmVzdCB3
YXkgdG8gdmVyaWZ5IHRoZSBjb3JyZWN0bmVzcyBvZiBvdXIgaW1wbGVtZW50YXRpb24/CgpPYnZp
b3VzbHkgd2l0aCBsaW1pdGVkIHNwYWNlIGluIG91ciBwYXBlciwgd2UgY291bGQgb25seSBpbmNs
dWRlIGEgc21hbGwgc2VsZWN0aW9uIG9mIHRlc3QgcmVzdWx0cy4gIE1hbnkgb3RoZXIgdGVzdHMg
d2VyZSBydW4gaW4gcHJhY3RpY2UsIGFuZCB3ZSBoYXZlIGV4cGFuZGVkIG91ciB0ZXN0IHJlcGVy
dG9pcmUgc2luY2UuCgpJbiBwYXJ0aWN1bGFyLCB3ZSBub3cgcm91dGluZWx5IHJ1biB0ZXN0cyB3
aXRoIGEgc2ltdWxhdGVkIHR5cGljYWwgSW50ZXJuZXQgcGF0aCBkZWxheSBpbnNlcnRlZCwgZWcu
IDIwbXMsIDgwbXMsIDE2MG1zIGJhc2VsaW5lIFJUVHMgdG8gcmVwcmVzZW50IHJlYWNoaW5nIGEg
bG9jYWwtaXNoIENETiwgYWNyb3NzIHRoZSBBdGxhbnRpYywgYW5kIGZyb20gRXVyb3BlIHRvIHRo
ZSBVUyBXZXN0IENvYXN0LiAgWW91IHdpbGwgYWxzbyB3YW50IHRvIGluY2x1ZGUgbXVsdGlwbGUg
dHJhZmZpYyBtaXhlcyBpbiB0aGUgYW5hbHlzaXMsIGluIHBhcnRpY3VsYXIgZGlmZmVyZW50IGNv
bmdlc3Rpb24gY29udHJvbCBhbGdvcml0aG1zIChhdCBsZWFzdCBSZW5vIGFuZCBDVUJJQyksIGFu
ZCBydW5uaW5nIHdpdGggRUNOIGJvdGggZW5hYmxlZCBhbmQgZGlzYWJsZWQgYXQgdGhlIGVuZHBv
aW50cy4KCkEgdXNlZnVsIHRvcnR1cmUgdGVzdCB3ZSB1c2VkIHdhcyB0byBzZW5kIG1hbnkgYnVs
ayBmbG93cyB1cCB0aGUgbmFycm93IHNpZGUgb2YgdGhlIGxpbmsgYW5kIGEgc2luZ2xlIGJ1bGsg
ZmxvdyBkb3duIHRoZSB3aWRlIHNpZGUuICBGb3IgZXhhbXBsZSwgNTA6MSBmbG93IGNvdW50cyB3
aXRoIDE6MTAsIDE6MjAgYW5kIDE6MzAgYmFuZHdpZHRoIGFzeW1tZXRyaWVzLiAgVGhlIGFja3Mg
b2YgdGhlIHNpbmdsZSBmbG93IHRoZW4gaGF2ZSB0byBjb21wZXRlIHdpdGggdGhlIGhlYXZ5IGxv
YWQgb2YgdGhlIG1hbnkgZmxvd3MsIGFuZCB0aGUgdG90YWwgZ29vZHB1dCBvZiB0aGF0IHNpbmds
ZSBmbG93IGlzIGFuIGltcG9ydGFudCBtZXRyaWMsIGFsb25nIHdpdGggYm90aCB0aGUgdG90YWwg
Z29vZHB1dCBhbmQgdGhlIEphaW4ncyBmYWlybmVzcyBvZiB0aGUgdXBsb2FkIHRyYWZmaWMuICBU
aGlzIHNob3VsZCBzaG93IGEgcGFydGljdWxhcmx5IHN0cm9uZyBlZmZlY3Qgb2YgdGhlIGFjayBm
aWx0ZXIsIGFzIG90aGVyd2lzZSBpbmRpdmlkdWFsIGFja3MgaGF2ZSB0byBiZSBkcm9wcGVkIGJ5
IHRoZSBBUU0sIHdoaWNoIENvZGVsIGlzIG5vdCB2ZXJ5IGdvb2QgYXQgYWRhcHRpbmcgdG8gcXVp
Y2tseS4KCkluIGV2YWx1YXRpbmcgdGhlIGFib3ZlLCB5b3Ugd2lsbCB3YW50IHRvIGJlIHZpZ2ls
YW50IG5vdCBvbmx5IGZvciBvYnNlcnZlZCBncm9zcyBwZXJmb3JtYW5jZSwgYnV0IGFsc28gdGhl
IGV4dGVudCB0byB3aGljaCB0aGUgYWNrIGZpbHRlciBwcmVzZXJ2ZXMgb3IgbG9zZXMgaW5mb3Jt
YXRpb24gZnJvbSB0aGUgYWNrIHN0cmVhbS4gIFRoaXMgaXMgcGFydGljdWxhcmx5IHRydWUgaW4g
dGhlIHJ1bnMgd2l0aG91dCBFQ04sIGluIHdoaWNoIGNvbmdlc3Rpb24gc2lnbmFscyBjYW4gb25s
eSBiZSBhcHBsaWVkIHRocm91Z2ggcGFja2V0IGxvc3MsIGFuZCB0aGUgZmVlZGJhY2sgb2YgdGhh
dCBzaWduYWwgaXMgdGhyb3VnaCBkdXAtYWNrcyBhbmQgU0FDSy4gIEkgdGhpbmsgeW91IHdpbGwg
ZmluZCB0aGF0IHRoZSAiYWdncmVzc2l2ZSIgc2V0dGluZyBsb3NlcyBzb21lIGluZm9ybWF0aW9u
LCBhbmQgaXRzIHBlcmZvcm1hbmNlIHN1ZmZlcnMgYWNjb3JkaW5nbHkgaW4gc29tZSBjYXNlcy4K
CiAtIEpvbmF0aGFuIE1vcnRvbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQK
aHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
