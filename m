Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F7E8216ADD
	for <lists+cake@lfdr.de>; Tue,  7 Jul 2020 12:57:58 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 6A14E3CBC8;
	Tue,  7 Jul 2020 06:57:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1594119477;
	bh=dGA5ztFrkHzN8HoWOCFAF7bxnfkm1KY6+/KQI2yY15U=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=c2Uy5In7FnYB92kQUU5kTJPlUhUNRR78SsEqpGamEpHbVE8PPHAyTgjjMv+AMIIcK
	 CrhRWvD6A4ZSZR4WnyRd8WeKuoQkqHsIjscB4ffRE6GII5Wl3VPBA4gHd8dvKnE9ym
	 yASiHZlannRCiY7qOwlG+gbKq1bbR2LIKFZmEKr+RbEHom6YyIjoxa8IHcMrE8ecfF
	 smKSS7QPyZTSEJI8PZ2FkMR5uXzakuNRFjcYx61UE1EComZUacVQJoYXb6Ux2Jygkm
	 zF98yfUHQHY0Hnivi5/AOCz8vwQf/QXAErDQOXVpXldymJK3fjZVfwj6obND6th/Iy
	 rMut6wSRTh/Jg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [205.139.110.61])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id ABDDB3B29E
 for <cake@lists.bufferbloat.net>; Tue,  7 Jul 2020 06:57:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1594119476;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=y5EnoUm440JYgQkBnt9MLy17ni9YmA7k7Hw8wKo4OHM=;
 b=FfcHg/Zf44tZ7J+tYlbYFlqoAyBHmWvMZ5qOJGqA2YGp/kha+S9n0H7LPZQtTK73wPuhPV
 dXE+wCN2D7Bink97dFZW3ZXjib1qq/lD35ElRyF+zlbGEHtabKLKusazJSlInz+vGl9z/5
 I/yMpxWcm6RediWpsVKFCs+M+tPu4Lg=
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com
 [209.85.210.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-80-A2XVT7i1POOcwfq4AOi80w-1; Tue, 07 Jul 2020 06:57:54 -0400
X-MC-Unique: A2XVT7i1POOcwfq4AOi80w-1
Received: by mail-pf1-f198.google.com with SMTP id a8so3873723pff.3
 for <cake@lists.bufferbloat.net>; Tue, 07 Jul 2020 03:57:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=H2LYwh1VdKHxkxER4SLeQdN4bGqkhcDbcHO7KIziy8U=;
 b=myvRrAGeeqDfeFIXssP0j6l2/mWgoFUyYO5po2AI6CG1yxYbOLjlpgLXqkXuWzAjYt
 NhNG/C3DYiIkj4t/vpkSOYB01AGEeD62vxhqpSHKNqhb80mmzUSUwCk2YmT2knPHIdQo
 RyMCfAD3wLHNI7clWqHV7qm54AUnnyI6l6Ckse6Knz6wm29AyF0J6ho6TqP2I1rO9+/w
 x6gly7YalyV+Oojg+DV9bfaTtWf8NA5FZn05byTIixLDJLqVrfqs8/AVYW23aB14wLlQ
 bavq/7rLaUwX3sSFL6frbdPc2lSulCSpGq3RNA/swz29rsKtK8qqw2WhleatQpwCBahS
 ebbw==
X-Gm-Message-State: AOAM532r9EsNqHvt5mq/I9g7RL0vs214CmF5ahw7blFF87pZRKoF76cB
 NKVanNSFAnN+bqwfQdprU6gl971TrSP8T6Ipd1QOgliCukq7vezJ/8D4SU9iAsIbO27mysXVsV3
 qxSr+gHnMoNrJYQctIKk88A==
X-Received: by 2002:a65:6416:: with SMTP id a22mr19519031pgv.392.1594119473584; 
 Tue, 07 Jul 2020 03:57:53 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy/9IIl501a1fdtLWVOnvj8Zt0/yDhup0dmp5XfHtfzAaK6AUC7ght54TQiL5R5uxU3hdneyQ==
X-Received: by 2002:a65:6416:: with SMTP id a22mr19518985pgv.392.1594119472610; 
 Tue, 07 Jul 2020 03:57:52 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
 by smtp.gmail.com with ESMTPSA id k189sm21462268pfd.175.2020.07.07.03.57.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jul 2020 03:57:51 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 83CC11804ED; Tue,  7 Jul 2020 12:57:47 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Toshiaki Makita <toshiaki.makita1@gmail.com>, davem@davemloft.net
In-Reply-To: <234d54c2-5b34-7651-5e57-490bee9920ae@gmail.com>
References: <20200706122951.48142-1-toke@redhat.com>
 <234d54c2-5b34-7651-5e57-490bee9920ae@gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Tue, 07 Jul 2020 12:57:47 +0200
Message-ID: <87d057lhhw.fsf@toke.dk>
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=toke@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Cake] [PATCH net] vlan: consolidate VLAN parsing code and
	limit max parsing depth
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
Cc: Davide Caratti <dcaratti@redhat.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Jamal Hadi Salim <jhs@mojatatu.com>, cake@lists.bufferbloat.net,
 Cong Wang <xiyou.wangcong@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

VG9zaGlha2kgTWFraXRhIDx0b3NoaWFraS5tYWtpdGExQGdtYWlsLmNvbT4gd3JpdGVzOgoKPiBP
biAyMDIwLzA3LzA2IDIxOjI5LCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gd3JvdGU6Cj4+IFRv
c2hpYWtpIHBvaW50ZWQgb3V0IHRoYXQgd2Ugbm93IGhhdmUgdHdvIHZlcnkgc2ltaWxhciBmdW5j
dGlvbnMgdG8gZXh0cmFjdAo+PiB0aGUgTDMgcHJvdG9jb2wgbnVtYmVyIGluIHRoZSBwcmVzZW5j
ZSBvZiBWTEFOIHRhZ3MuIEFuZCBEYW5pZWwgcG9pbnRlZCBvdXQKPj4gdGhhdCB0aGUgdW5ib3Vu
ZGVkIHBhcnNpbmcgbG9vcCBtYWtlcyBpdCBwb3NzaWJsZSBmb3IgbWFsaWNpb3VzbHkgY3JhZnRl
ZAo+PiBwYWNrZXRzIHRvIGxvb3AgdGhyb3VnaCBwb3RlbnRpYWxseSBodW5kcmVkcyBvZiB0YWdz
Lgo+PiAKPj4gRml4IGJvdGggb2YgdGhlc2UgaXNzdWVzIGJ5IGNvbnNvbGlkYXRpbmcgdGhlIHR3
byBwYXJzaW5nIGZ1bmN0aW9ucyBhbmQKPj4gbGltaXRpbmcgdGhlIFZMQU4gdGFnIHBhcnNpbmcg
dG8gYW4gYXJiaXRyYXJpbHktY2hvc2VuLCBidXQgaG9wZWZ1bGx5Cj4+IGNvbnNlcnZhdGl2ZSwg
bWF4IGRlcHRoIG9mIDMyIHRhZ3MuIEFzIHBhcnQgb2YgdGhpcywgc3dpdGNoIG92ZXIKPj4gX192
bGFuX2dldF9wcm90b2NvbCgpIHRvIHVzZSBza2JfaGVhZGVyX3BvaW50ZXIoKSBpbnN0ZWFkIG9m
Cj4+IHBza2JfbWF5X3B1bGwoKSwgdG8gYXZvaWQgdGhlIHBvc3NpYmxlIHNpZGUgZWZmZWN0cyBv
ZiB0aGUgbGF0dGVyIGFuZCBrZWVwCj4+IHRoZSBza2IgcG9pbnRlciAnY29uc3QnIHRocm91Z2gg
YWxsIHRoZSBwYXJzaW5nIGZ1bmN0aW9ucy4KPj4gCj4+IFJlcG9ydGVkLWJ5OiBUb3NoaWFraSBN
YWtpdGEgPHRvc2hpYWtpLm1ha2l0YTFAZ21haWwuY29tPgo+PiBSZXBvcnRlZC1ieTogRGFuaWVs
IEJvcmttYW5uIDxkYW5pZWxAaW9nZWFyYm94Lm5ldD4KPj4gRml4ZXM6IGQ3YmYyZWJlYmMyYiAo
InNjaGVkOiBjb25zaXN0ZW50bHkgaGFuZGxlIGxheWVyMyBoZWFkZXIgYWNjZXNzZXMgaW4gdGhl
IHByZXNlbmNlIG9mIFZMQU5zIikKPj4gU2lnbmVkLW9mZi1ieTogVG9rZSBIw7hpbGFuZC1Kw7hy
Z2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+Cj4+IC0tLQo+IC4uLgo+PiBAQCAtNjIzLDEzICs1OTcs
MTIgQEAgc3RhdGljIGlubGluZSBfX2JlMTYgX192bGFuX2dldF9wcm90b2NvbChzdHJ1Y3Qgc2tf
YnVmZiAqc2tiLCBfX2JlMTYgdHlwZSwKPj4gICAJCQl2bGFuX2RlcHRoID0gRVRIX0hMRU47Cj4+
ICAgCQl9Cj4+ICAgCQlkbyB7Cj4+IC0JCQlzdHJ1Y3Qgdmxhbl9oZHIgKnZoOwo+PiArCQkJc3Ry
dWN0IHZsYW5faGRyIHZoZHIsICp2aDsKPj4gICAKPj4gLQkJCWlmICh1bmxpa2VseSghcHNrYl9t
YXlfcHVsbChza2IsCj4+IC0JCQkJCQkgICAgdmxhbl9kZXB0aCArIFZMQU5fSExFTikpKQo+PiAr
CQkJdmggPSBza2JfaGVhZGVyX3BvaW50ZXIoc2tiLCB2bGFuX2RlcHRoLCBzaXplb2Yodmhkciks
ICZ2aGRyKTsKPgo+IFNvbWUgZHJpdmVycyB3aGljaCB1c2Ugdmxhbl9nZXRfcHJvdG9jb2wgdG8g
Z2V0IElQIHByb3RvY29sIGZvciBjaGVja3N1bSBvZmZsb2FkIGRpc2NhcmRzCj4gcGFja2V0cyB3
aGVuIGl0IGNhbm5vdCBnZXQgdGhlIHByb3RvY29sLgo+IEkgZ3Vlc3MgZm9yIHN1Y2ggdXNlcnMg
dGhpcyBmdW5jdGlvbiBzaG91bGQgdHJ5IHRvIGdldCBwcm90b2NvbCBldmVuIGlmIGl0IGlzIG5v
dCBpbiBza2IgaGVhZGVyPwo+IEknbSBub3Qgc3VyZSBzdWNoIGEgY2FzZSBjYW4gaGFwcGVuLCBi
dXQgc2luY2UgeW91IGNhcmUgYWJvdXQgdGhpcywgeW91IGtub3cgcmVhbCBjYXNlcyB3aGVyZQo+
IHZsYW4gdGFnIGNhbiBiZSBpbiBza2IgZnJhZ3M/Cgpza2JfaGVhZGVyX3BvaW50ZXIoKSB3aWxs
IHN0aWxsIHN1Y2NlZWQgaW4gcmVhZGluZyB0aGUgZGF0YSwgaXQnbGwganVzdApkbyBzbyBieSBj
b3B5aW5nIGl0IGludG8gdGhlIGJ1ZmZlciBvbiB0aGUgc3RhY2sgKHZoZHIpIGluc3RlYWQgb2YK
bW92aW5nIHRoZSBTS0IgZGF0YSBpdHNlbGYgYXJvdW5kLi4uCgotVG9rZQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2Fr
ZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlz
dGluZm8vY2FrZQo=
