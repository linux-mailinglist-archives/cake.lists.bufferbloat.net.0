Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 81371433836
	for <lists+cake@lfdr.de>; Tue, 19 Oct 2021 16:17:09 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 013003CB62;
	Tue, 19 Oct 2021 10:17:08 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1634653028;
	bh=Be3LpEJxuIzcrZu9IOnVwAqZcgC4uby6i99Drg4qen8=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cr+QwirMrVVJZz6hq+eKkElwZDNadpwkivUTe5k/cHPrKbYKlAe9Z2wQ9PLVLHjwn
	 R4w3wjprONzko85Gaz0bKL2P/MiB72LsCiWThl4Bx15FxoRyfwIgUXA5iOUqp6dv8q
	 749O5A7JSzuk/+z3999C70OmxvK/xg213CLnzJDiCgfK47QehOdUg4LjLj0U4Eves3
	 1rp/Rc7tMX6WDUlHs1Qy9VcGKIB0xkXYhgi8dxnGnMymycpgkctiElnzsdxukClgIp
	 r3vYTf6MAkyVEnALW0pQlNA/otfGRpYtrdB4Ct+ZoDpLmmbLuZgOeAAfcVqGnOc2Fr
	 QrAfc31fKRHOg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x133.google.com (mail-il1-x133.google.com
 [IPv6:2607:f8b0:4864:20::133])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id BFB643B29D;
 Tue, 19 Oct 2021 10:17:06 -0400 (EDT)
Received: by mail-il1-x133.google.com with SMTP id h10so18558116ilq.3;
 Tue, 19 Oct 2021 07:17:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=SqqWy5Zsd2OzYXj2N8vHoys31o9IAW7TKAXYcjitUw0=;
 b=S7YOFdSq1R31wFZpPvSJZ7yUKXmXdSNL6BgrZ/JEsN/J/kMaiaYxnxX4Lt2Gmdxwjs
 BNDlJERYA95qjr6gJGWzUQcWEAIjA341d1H4UchB0hPuSrXuEljRCU81EyjaeeXIQHbE
 vTXmL1uUqrGaC4QWZb+XHKQrQ7CdOm2uK31tjCSp7f8RHhaHEvTH//T0ezbzlOS8SS3h
 Y05hFWmif5QmolFzi6u5GbKbAfXa+cnMJ6bGaIJNWrhXgNl6sJ3T8LDtRxSNPehF/9Ks
 AHfVzwkw9/Os2cGzClLp5vMAMjsPezAYlkcxT4gsa0u/WNohKTBFey9bwSqVb6de+rFA
 1wJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=SqqWy5Zsd2OzYXj2N8vHoys31o9IAW7TKAXYcjitUw0=;
 b=ScwG/qS3usIFO76+IzVWIztAyp8oS9yYkzueO1s+w8wXVimOACvRj7idUmgKORyr3J
 rIuqSqyEZuA5jKeSg6RjQ/kK+pkbbcF6mlCXbYXjwlbYEQJSknCKB1Gdr6RkSi3yFX2T
 yEQg5piPbjTa2QSwQVrMbJVONoM5hcaC+RGuxgZgCUctNeRYs6FeKjhO4gSVerrUJFas
 4l/L/FobD+Nz8BJ+w0FTPm/bFbmebxeeYBy27cdKR1hJS13PgcS4cYXGa0Gl/dt27qxv
 wBBn+rLPK+3tkAPdAMBnpSsuV1oZ2cIu5WitA0NUDw6euE+4/ePmBNozo9Nba4gnXoaq
 6TCw==
X-Gm-Message-State: AOAM5335hNc4htwQr+wXqQX4vTfbffAsV/BE428z69pCArEJR5Cf5bD8
 kOx4+YjgrYsFXsAU4zOKeSzA2khHwKabd4LhnJ0=
X-Google-Smtp-Source: ABdhPJyTDZuuleLSQNyXA4bdLYoSdm9aGZ9LuquklclnGtbRuptKYmdNNtKN3rkiVWLDjbYM2FwzXI/V3LhzPYsT8Ks=
X-Received: by 2002:a05:6e02:1d9b:: with SMTP id
 h27mr18834191ila.274.1634653025888; 
 Tue, 19 Oct 2021 07:17:05 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw43C7CB-4Jv7h9NvvzjROdO5p2rVbPSZnmSJf0JAaCyaQ@mail.gmail.com>
 <CBBD435B-5A6F-408D-B17C-B28F326B49AC@gmx.de>
 <CAA93jw48afWujaJm8Sn+J-uEHb7iKLx57p7e5d=Qw9QyX=Csqg@mail.gmail.com>
 <87sfx31dt5.fsf@toke.dk>
 <CAA93jw43kC8a4_8YL3dobgvpkLO5UPbOm8yeFvwhh0dgV9eiuw@mail.gmail.com>
 <87pms71cmr.fsf@toke.dk>
 <CAA93jw7VVX_6UxyqczSZ3YoDRo9QvRZTqWqY9+0PC=rOB7FjeQ@mail.gmail.com>
 <CAA93jw7kwCc9HmfA7X4BzSCS+9UgngXj31d3gb7Aw=XQtQHZMA@mail.gmail.com>
 <878ryqjxke.fsf@toke.dk>
 <CAA93jw52-6oaOgDCS7m8+zF0VDFDEgADat=So7zWPTwNrR988w@mail.gmail.com>
 <87tuhdgt35.fsf@toke.dk>
 <CAA93jw7zPCJE13DxB6QzM4eMh+-DkRaX-_XJhzAU5y9b9JbJbg@mail.gmail.com>
 <A7E9FA52-E02A-46B8-A518-B47778E23F8C@gmx.de>
In-Reply-To: <A7E9FA52-E02A-46B8-A518-B47778E23F8C@gmx.de>
From: Dave Taht <dave.taht@gmail.com>
Date: Tue, 19 Oct 2021 07:16:52 -0700
Message-ID: <CAA93jw6_7LUWo4=JoXTuQm1OK1rQJpJHYjF0TcUWo3nsOQxdQQ@mail.gmail.com>
To: Sebastian Moeller <moeller0@gmx.de>
Subject: Re: [Cake] [Ecn-sane]  l4s kernel submission
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
 ECN-Sane <ecn-sane@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gVHVlLCBPY3QgMTksIDIwMjEgYXQgNjozNCBBTSBTZWJhc3RpYW4gTW9lbGxlciA8bW9lbGxl
cjBAZ214LmRlPiB3cm90ZToKPgo+IFNvIHRoYXQgc3RpbGwgbGVhdmVzIHVzIHdpdGggR1NPIGlu
dHJvZHVjaW5nIENFICJzcGlrZXMiIGludG8gdGhlIG5ldHdvcmssIHRoYXQgbWlnaHQgbm90IG5l
Y2Vzc2FyaWx5IHJlZmxlY3Qgd2hhdCB3b3VsZCBoYXBwZW5lZCBpZiB0aGUgbWV0YS1wYWNrZXQg
aGFkIGJlZW4gc2VnbWVudGVkIGJlZm9yZS4uLi4KCgoKSSBhbSBub3Qgc3VyZSB0aGUgcHJvcGVy
IHRlcm0gZm9yIHRoaXMsIHRoZSAid2F2ZWZyb250IiBvZiBhIEdTTydkCnBhY2tldCB3aWxsIGdl
dCBzY2hlZHVsZWQgYW5kIG5vdCBtYXJrZWQsIGFuZCB0aGUgdGFpbCBvZiB0aGUgd2F2ZSwKd2Vy
ZSBpdCBub3QgR1NPJ2QsIG1pZ2h0IGJlIG1hcmtlZC4gVGhlIG5leHQgd2F2ZWZyb250LCBhc3N1
bWluZyBpdCdzCmFjY3VtdWxhdGVkIGEgbmVnYXRpdmUgZGVmaWNpdCwgd2lsbCBhbGwgYmUgbWFy
a2VkLiBOb3cgd2hhdCB0aGlzCm1lYW5zIGZvciB0aGUgbmV4dCAid2F2ZWZyb250IiBJIGRvbid0
IHJlYWxseSB1bmRlcnN0YW5kLCBteSBndWVzcyBpcwpwYWNrZXRzIHdpbGwgc3RhcnQgdG8gZ2V0
IHBhY2VkIG5hdHVyYWxseSBmcm9tIHRoZSBzZW5kZXIgYnV0IG1pZ2h0CnN0aWxsIGJlIGFycml2
aW5nIGluIGEgYnVuY2ggdG8gdGhlIHJlY2VpdmVyLgoKT24gdGhlIEdSTyBzaWRlLCBJIGFtIGds
YWQgdG9rZSBoYXMgcmVhc3N1cmVkIG1lIHRoYXQgYXQgbGVhc3QgaW4KbGludXgsIEdSTyBjaGVj
a3MgYWxsIHRoZSBoZWFkZXJzLiBhcyBmb3Igd2hhdCBoYXJkd2FyZSBvZmZsb2FkcyBvcgp0aGUg
ZGV2aWNlIGRyaXZlcnMgbWlnaHQgZG8sIHVua25vd24uCgpJbiBvdXIgd29ybGQgd2UndmUgYmVl
biBzcGxpdHRpbmcgdXAgZ3JvL2dzbyBpbiBzZWxmIGRlZmVuc2Ugc28gbXVjaAp0aGF0IHdlIGRv
bid0IGtub3cgd2hhdCB0aGUgcmVzdCBvZiB0aGUgd29ybGQgbG9va3MgbGlrZS4gc2NoX2ZxIGhh
cyBhCjMwMDAgYnl0ZSBxdWFudHVtIGFuZCBhbHdheXMgcmVsZWFzZXMgdHdvIHBhY2tldHMgYnkg
ZGVmYXVsdC4KCj4gSSBub3RlIHRoYXQgcmZjMzE2OCBwcm9iYWJseSB3aWxsIG5vdCBjYXJlLCBz
aW5jZSBpdCB3aWxsIHNpZ25hbCBhIENFIG1hcmsgZm9yID49IGEgZnVsbCBSVFQgYW55d2F5LCBi
dXQgSEZDQ3Mgd2lsbCBjYXJlLgoKSSBoYXZlIGxvbmcgdGhvdWdodCB0aGF0IHJlc3BvbmRpbmcg
YmV0dGVyIHRvIG11bHRpcGxlIHJmYzMxNjggbWFya3MKaW4gYW4gUlRUIHdvdWxkIGJlIGEgbmlj
ZSBhZGRpdGlvbiBmb3IgYSB0cmFuc3BvcnQgdG8gaGF2ZS4gQnV0LCBubywKdGhleSBkb24ndCBj
YXJlLgoKPiBSZWdhcmRzCj4gICAgICAgICBTZWJhc3RpYW4KPgo+Cj4KPiA+IE9uIE9jdCAxOSwg
MjAyMSwgYXQgMTU6MzAsIERhdmUgVGFodCA8ZGF2ZS50YWh0QGdtYWlsLmNvbT4gd3JvdGU6Cj4g
Pgo+ID4gT24gVHVlLCBPY3QgMTksIDIwMjEgYXQgNDoxOSBBTSBUb2tlIEjDuGlsYW5kLUrDuHJn
ZW5zZW4gPHRva2VAdG9rZS5kaz4gd3JvdGU6Cj4gPj4KPiA+PiBEYXZlIFRhaHQgPGRhdmUudGFo
dEBnbWFpbC5jb20+IHdyaXRlczoKPiA+Pgo+ID4+PiBteSBtb3JlIHNwZWNpZmljIHF1ZXN0aW9u
IHdhcyBncm8uIE9uIGdybyBhc3NlbWJseSBpcyB0aGUgZHNjcC9lY24KPiA+Pj4gaGVhZGVyIGV4
YW1pbmVkPwo+ID4+Cj4gPj4gWWVzLCBhbmQgb25seSBwYWNrZXRzIHdpdGggdGhlIHNhbWUgdmFs
dWUgZ2V0IGFnZ3JlZ2F0ZWQ6Cj4gPj4gaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgv
bGF0ZXN0L3NvdXJjZS9uZXQvaXB2Ni9pcDZfb2ZmbG9hZC5jI0wyNjMKPiA+Cj4gPiBHb29kIHRv
IGtub3cuIFRoeC4KPiA+Cj4gPj4gLVRva2UKPiA+Cj4gPgo+ID4KPiA+IC0tCj4gPiBGaXhpbmcg
U3RhcmxpbmsncyBMYXRlbmNpZXM6IGh0dHBzOi8vd3d3LnlvdXR1YmUuY29tL3dhdGNoP3Y9Yzln
TG82WHJ3Z3cKPiA+Cj4gPiBEYXZlIFTDpGh0IENFTywgVGVrTGlicmUsIExMQwo+CgoKLS0gCkZp
eGluZyBTdGFybGluaydzIExhdGVuY2llczogaHR0cHM6Ly93d3cueW91dHViZS5jb20vd2F0Y2g/
dj1jOWdMbzZYcndndwoKRGF2ZSBUw6RodCBDRU8sIFRla0xpYnJlLCBMTEMKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2Fr
ZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlz
dGluZm8vY2FrZQo=
