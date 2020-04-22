Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 080B91B4C0C
	for <lists+cake@lfdr.de>; Wed, 22 Apr 2020 19:45:16 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id CAF713CB37;
	Wed, 22 Apr 2020 13:45:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1587577514;
	bh=B4WHWyHOs9vZpjayt3ZXGS7+8bTyY6xrgtCrfLUSBp0=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PeG+6uRXclTjuShEamzO2bIoI5tTPkwcsGTX4yA8sOoHQsLq2u9KIB6TSzIBgr83I
	 ZWYWt3zARN2tqpyOC7AHPkUBnzF70LcWbVCfLILy5lpW2NUrCng8nsWeHosTgVFxaQ
	 f2fXsImucRwCluBLy4T3FWNvu73huJeY37gciiRigI9HtJvnLrC8TyFc3bFOIPJpZ3
	 aH+xh/xQ2GYkqKoj2nQeOzz2vweOZh7+4XHyCbz0lspMnOhiNNKQbybZ2TvMVdxamZ
	 yh/LcmGlaURpJELKPEZZ6Dd/RS1rSmmMkyCLRMPtqTkZPs+8jmf1V8orniNfM8eRrW
	 niwFJECH3Sdhg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x141.google.com (mail-il1-x141.google.com
 [IPv6:2607:f8b0:4864:20::141])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id B4EE23B29E
 for <cake@lists.bufferbloat.net>; Wed, 22 Apr 2020 13:45:13 -0400 (EDT)
Received: by mail-il1-x141.google.com with SMTP id w6so2808154ilg.1
 for <cake@lists.bufferbloat.net>; Wed, 22 Apr 2020 10:45:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=QIh6jYtSdGvmBHu7YYQmXcabCEwgGkjAYEsjoO7fYtk=;
 b=g1oma4CCHVUwla7sC6nwh5ukz6Z5LoxxnN1ztU3iWsxlv6Ay36lW5Nxk5FYQvvBrrI
 HH7+qP5/zRkoHCaMo6P+R1nqxRC/S7eoK1kaJGN6X41kiOZ+bRIlaOoQHzKBY/XNoKEF
 4dy/2CV2zPxKLMizZYYonpdyx/OFQ+n2CzM5ldEZ2qVXkf73xftiAhw9gPnQz4zfTZLT
 FwaM+9ENa3a73QjV+u/gDxCii0MUqG4BKBbQitGLNg4VcZMtd4tNGwA8kS2GLQazfDGi
 8GRjhbuYOWEMAREG4FgWP1QBUC6Q6/7fnTJHlhiA4dOiuG+0GhUy6LqaSzf1gNb7N1qN
 wXbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=QIh6jYtSdGvmBHu7YYQmXcabCEwgGkjAYEsjoO7fYtk=;
 b=mMXcKrMi+xk2Brs59l4v0yze80PUL4eJoJKcIoZYpnExp/sMcy6OttBGE64PVV6s76
 QUrhuJu1QeG3ytvaGOSYwXlUiKhOFUcP9lS8cAxB8F8Q7hIS2s0Rs6YjHZkKKf+g/pO6
 mqBAlhghhkmuTqjnAuxO9416CLrHDAgX6ZF0GmsZLnHCi9h9uJmC8zk39ww111yQK2c6
 M7gD6sjG7CBfS966tBaArQ5zC683Clv02ZBljpCZf78/Kb0/hOaR9r7huarPQDgA7wTQ
 GMcWnwVeQk2yfNnjwy9HN1H8iEBLb7x9Ai/ls4Zo+YKZKTEbjUOfZuFIZE92LdFgWlrD
 byAQ==
X-Gm-Message-State: AGi0PuYsYqlTqA9rw5uu90M2cGjn0U+7hA5woSyVumxwZ8IMP2sgvxa6
 x7edwLmXHbNeeiolJ7m/Mim6bh474AwrsyJBDkZ1nHgB
X-Google-Smtp-Source: APiQypL7rZYhfSzgtt6y9sqQVm6nIwUD74z2pzaeBJuCQKy9SFVglzHb29eATKGsPMqd8CEBtpF6a77X0Q2LhF4KFTY=
X-Received: by 2002:a92:8e50:: with SMTP id k16mr28987631ilh.45.1587577513217; 
 Wed, 22 Apr 2020 10:45:13 -0700 (PDT)
MIME-Version: 1.0
References: <F7A06AF9-12CF-42BB-8935-29F784CE882F@darbyshire-bryant.me.uk>
 <CAA93jw7bKq7hHvQdPGK-iMPwzzaFrTx3UHw=mZq1KO1D2ycDeQ@mail.gmail.com>
 <CAA93jw5JCj-RpYWCe440E4AL8_ATYwyYJ99LPyL7Z=fnpvtuuA@mail.gmail.com>
 <429C2CD6-5395-4E00-9A92-58932DD1D4EC@darbyshire-bryant.me.uk>
In-Reply-To: <429C2CD6-5395-4E00-9A92-58932DD1D4EC@darbyshire-bryant.me.uk>
From: Dave Taht <dave.taht@gmail.com>
Date: Wed, 22 Apr 2020 10:45:01 -0700
Message-ID: <CAA93jw4zHwGBLQMG-wEgN5DShk6e_O8nQpgckYNKuxFakF5uXA@mail.gmail.com>
To: Kevin Darbyshire-Bryant <kevin@darbyshire-bryant.me.uk>
Subject: Re: [Cake] DSCP ramblings
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
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gV2VkLCBBcHIgMjIsIDIwMjAgYXQgMTA6MTcgQU0gS2V2aW4gRGFyYnlzaGlyZS1CcnlhbnQK
PGtldmluQGRhcmJ5c2hpcmUtYnJ5YW50Lm1lLnVrPiB3cm90ZToKPgo+Cj4KPiA+IE9uIDIyIEFw
ciAyMDIwLCBhdCAxNzoyMCwgRGF2ZSBUYWh0IDxkYXZlLnRhaHRAZ21haWwuY29tPiB3cm90ZToK
PiA+Cj4gPiBhbmQgYmVjYXVzZSBvZiB5b3VyIEknbSBvZmYgYnVpbGRpbmcgY29sbGVjdGQgYmVj
YXVzZSB0aG9zZSBncmFwaHMKPiA+IGxvb2sgc28gZ29vZC4gOikKPgo+IE9oIGRlYXIsIHNvcnJ5
IGFib3V0IHRoYXQgOi0pICBUaGUgY29sbGVjdGlvbiBiaXQgaHR0cHM6Ly9naXRodWIuY29tL2xk
aXItRURCMC9wYWNrYWdlcy9jb21taXQvOTMyYmI0YjAyMmJkYmYzYWIwZmExZTQzODQyZjdjOTRk
YTdmMDQ2YQo+IFRoZSBkaXNwbGF5IGJpdCBodHRwczovL2dpdGh1Yi5jb20vbGRpci1FREIwL2x1
Y2kvY29tbWl0L2EwYTk1ZGExNzAzMDc5ODg3YTg1YzRkOWI2OTI5ZTc0ZDJjNzdhMjkKPgo+IERv
buKAmXQgYnJlYWsgaXQsIG9yIGlmIHlvdSBkbywgc2VuZCBmaXhlcyA7LSkKCkkganVzdCAtIGFt
YXppbmdseSAtIGZvciBiZWluZyB5ZWFycyBvdXQgb2YgcHJhY3RpY2UgLSBiZWZvcmUgbXkgZmly
c3QKY3VwIG9mIGNvZmZlZSAtIHBhdGNoZWQgb3BlbndydCBmb3IgcmVkdWNpbmcgdGhlIGNvZGVs
IHRhcmdldCwgdXBkYXRlZApiYWJlbGQgdG8gMS45LjIsIGFuZCB0aGUga2VybmVsIHRvIDUuNC4u
LiByZWZsYXNoZWQgYSB1Ym50IG1lc2ggYXAuLi4KYW5kIGl0IHdvcmtlZCwgZmlyc3QgdGltZS4g
SSBhbSBhZnJhaWQgdG8gcHVzaCBteSBsdWNrLCBmdXJ0aGVyLgoKPgo+IFRoZSBpZGVhIG9mIHVz
aW5nIGNvbGxlY3RkX2V4ZWMgYW5kIGhlbmNlIGEgc2ggc2NyaXB0IHdhcyB0aGUgcXVpY2tlc3Qg
d2F5IG9mIHNwaW5uaW5nIHNvbWV0aGluZyB1cC4gIEl0IGlzIGluaGVyZW50bHkgZ29pbmcgdG8g
YmUgaGVhdmllciB0aGFuIGEgcHJvcGVyIEMgYmFzZWQgcGx1Z2luL2NvbGxlY3RvcuKApmFuZCBi
ZXlvbmQgbXkgc2tpbGwvcGF0aWVuY2UgbGltaXRzCgpJIGdldCBpdC4gOikKCk15IGludGVudCBo
b3dldmVyIGlzIHRvIHNvbWVob3cgaGF2ZSB0aGUgY29sbGVjdG9yIHNlbmQgc3R1ZmYgYmFjayB0
bwphbm90aGVyIGNvbGxlY3RvciBlbHNld2hlcmUgYW5kIG5vdApzdG9yZSBhbnl0aGluZyBsb2Nh
bGx5LiBoYXZlbid0IGZpZ3VyZWQgb3V0IGhvdyB0byBkbyB0aGF0LiAoVGhlCnVhcC1saXRlIG1l
c2ggb25seSBoYXMgOE1CIGZsYXNoKQoKCj4oWW91IHNob3VsZCBoYXZlIHNlZW4gaG93IG1hbnkg
Y29tYmluYXRpb25zIG9mIOKAmConICYg4oCYJuKAmSB3ZXJlIGludm9sdmVkIGluIGdldHRpbmcg
aHR0cHMtZG5zLXByb3h5L2x1YmN1cmwgInN0YXRpYyBjdXJsX3NvY2tldF90IG9wZW5zb2NrZXRf
Y2FsbGJhY2sodm9pZCAqY2xpZW50cCwgY3VybHNvY2t0eXBlIHB1cnBvc2UsIHN0cnVjdCBjdXJs
X3NvY2thZGRyICphZGRyKSAgKHZvaWQpc2V0c29ja29wdChzb2NrLCBJUFBST1RPX0lQVjYsIElQ
X1RPUywgKGludCAqKWNsaWVudHAsIHNpemVvZihpbnQpKTvigJ0gdG8gd29yayA6LSkgKQoKdGhl
IGNkZWNsIHRvb2wgaXMgeW91ciBmcmllbmQgaGVyZS4KCj4gS2V2aW4KPgo+Cj4KCgotLSAKTWFr
ZSBNdXNpYywgTm90IFdhcgoKRGF2ZSBUw6RodApDVE8sIFRla0xpYnJlLCBMTEMKaHR0cDovL3d3
dy50ZWtsaWJyZS5jb20KVGVsOiAxLTgzMS00MzUtMDcyOQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1
ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtl
Cg==
