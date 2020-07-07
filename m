Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 62655216AF6
	for <lists+cake@lfdr.de>; Tue,  7 Jul 2020 13:02:05 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 25CEA3CBCA;
	Tue,  7 Jul 2020 07:02:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1594119724;
	bh=hv80nNwK0iFm9lBAT3w3IspRY6EUv7MOsCQKUEOXdGA=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=G1PMBc/PL+MVDlBZ8TbjXMtSrCBPw8uHohMPm3NmDLNotDnw+NNeRiGYoy43Hyace
	 XzrI4Sq5xaKBKzVyujBH0VEpQMHI1nRlAXRYmlnhedoV6j19iXb0UFtW9f+FZuveEG
	 g+DfxHW5LXqL0Per6aOopFtepZIdjRsiykGFl1kQniRT/uRaJtAvuZo9o1yRBItVj3
	 zeIKZrATj9qeeILdE7MJ00GWZFo7Z9KcPg6PlNicQ76miQySk2KJNsP9fl1r6gB5I2
	 apFcYgMxGeOkf07USuSYTL1k6Ui6ZLsVGco89jd8aMLHyaT2QuzEp4wvMCu0JGX96M
	 01jnWKIqCsYgw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com
 [IPv6:2607:f8b0:4864:20::1042])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id D9B633B29E
 for <cake@lists.bufferbloat.net>; Tue,  7 Jul 2020 07:02:02 -0400 (EDT)
Received: by mail-pj1-x1042.google.com with SMTP id mn17so4829091pjb.4
 for <cake@lists.bufferbloat.net>; Tue, 07 Jul 2020 04:02:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=onylQPnJ7kvkeI3KTBBiKnzU8j0ODNRNeq1rJYIc8vU=;
 b=GSL5nbf0hLwD4OEpvGhyZBiBZI+2AGc2qPF2d/6d5H6JH846RqZz//H1P5Ldcv+AwR
 GGf/AtKu0cJP5YUsvwniMn11pGrB2a88uT2rZgSkBmlblOBy/xegdTutMXvRoOxgn26b
 YfMY7AujOJtSXtvWl3dUISBEAKo0L8rAFEsFmS/GgXzDO84vWGFEpXfBOcK0TZluduga
 t2BkvXKucweypCMoCW3q+DD4XI5vdNFQSSgLXDMpncL/L3wfxlSH1gkYGGmfAeVbfYL1
 LOAE04vbHc8RDSlpQvafUZ5C6yHrzUWcmjExpgImbOF8PYSLRaxV3fDvitsMNS2adem3
 zBhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=onylQPnJ7kvkeI3KTBBiKnzU8j0ODNRNeq1rJYIc8vU=;
 b=OEq8/zOtLN9SI3zXj/vtkPXb7WEyYOWG2yy2qIYhOndtO22VjoiuD36K/CueXhgRd+
 UnzSuh6ymzMmcbeawYAmc34uiboEYZUqo5GN9vnZaCzzS+WmtaAU5OxgYMf6GnapPaV8
 y0asXHTzA6Jktx1QQfqBwfa7qkvsSnc2Ei2e63m142+ZrSNhUGd4oFJokSH7NRKSNYQN
 gevtWfi5PseQ5k6tqAA+sPjZ50bymOgajJEf8Gr6EgAODjja3Z4nU32OeTN5UrHB6TX5
 gYDENbJ/BLxSdSHDD/ZjlEzv1k8SKsOG/bTSrs7sk2/Gs9RR7W6dBkxH8HMwGeVyNAkf
 x4sA==
X-Gm-Message-State: AOAM5302EtNXAo/YWk6LGIzMn20xlR1QvhBLtwd3wp04WWPLUnJQN3Ep
 3nraM56vRwW4yg9cTYPrNbk=
X-Google-Smtp-Source: ABdhPJwdKGtHliAlygqbbEXV4aGH4JlIlfy4+kAastq0+iyTmtDmbx7/cL7Y23i1pulXJf+aLlit8w==
X-Received: by 2002:a17:90a:ebc7:: with SMTP id
 cf7mr3737739pjb.207.1594119722143; 
 Tue, 07 Jul 2020 04:02:02 -0700 (PDT)
Received: from [172.20.20.103] ([222.151.198.97])
 by smtp.gmail.com with ESMTPSA id v15sm695817pgo.15.2020.07.07.04.01.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 07 Jul 2020 04:02:01 -0700 (PDT)
To: =?UTF-8?Q?Toke_H=c3=b8iland-J=c3=b8rgensen?= <toke@redhat.com>
References: <20200706122951.48142-1-toke@redhat.com>
 <234d54c2-5b34-7651-5e57-490bee9920ae@gmail.com> <87d057lhhw.fsf@toke.dk>
From: Toshiaki Makita <toshiaki.makita1@gmail.com>
Message-ID: <0baaad68-843a-c929-38e8-6448ce2ca1a8@gmail.com>
Date: Tue, 7 Jul 2020 20:01:49 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <87d057lhhw.fsf@toke.dk>
Content-Language: en-US
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
 Cong Wang <xiyou.wangcong@gmail.com>, davem@davemloft.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gMjAyMC8wNy8wNyAxOTo1NywgVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIHdyb3RlOgo+IFRv
c2hpYWtpIE1ha2l0YSA8dG9zaGlha2kubWFraXRhMUBnbWFpbC5jb20+IHdyaXRlczoKPiAKPj4g
T24gMjAyMC8wNy8wNiAyMToyOSwgVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIHdyb3RlOgo+Pj4g
VG9zaGlha2kgcG9pbnRlZCBvdXQgdGhhdCB3ZSBub3cgaGF2ZSB0d28gdmVyeSBzaW1pbGFyIGZ1
bmN0aW9ucyB0byBleHRyYWN0Cj4+PiB0aGUgTDMgcHJvdG9jb2wgbnVtYmVyIGluIHRoZSBwcmVz
ZW5jZSBvZiBWTEFOIHRhZ3MuIEFuZCBEYW5pZWwgcG9pbnRlZCBvdXQKPj4+IHRoYXQgdGhlIHVu
Ym91bmRlZCBwYXJzaW5nIGxvb3AgbWFrZXMgaXQgcG9zc2libGUgZm9yIG1hbGljaW91c2x5IGNy
YWZ0ZWQKPj4+IHBhY2tldHMgdG8gbG9vcCB0aHJvdWdoIHBvdGVudGlhbGx5IGh1bmRyZWRzIG9m
IHRhZ3MuCj4+Pgo+Pj4gRml4IGJvdGggb2YgdGhlc2UgaXNzdWVzIGJ5IGNvbnNvbGlkYXRpbmcg
dGhlIHR3byBwYXJzaW5nIGZ1bmN0aW9ucyBhbmQKPj4+IGxpbWl0aW5nIHRoZSBWTEFOIHRhZyBw
YXJzaW5nIHRvIGFuIGFyYml0cmFyaWx5LWNob3NlbiwgYnV0IGhvcGVmdWxseQo+Pj4gY29uc2Vy
dmF0aXZlLCBtYXggZGVwdGggb2YgMzIgdGFncy4gQXMgcGFydCBvZiB0aGlzLCBzd2l0Y2ggb3Zl
cgo+Pj4gX192bGFuX2dldF9wcm90b2NvbCgpIHRvIHVzZSBza2JfaGVhZGVyX3BvaW50ZXIoKSBp
bnN0ZWFkIG9mCj4+PiBwc2tiX21heV9wdWxsKCksIHRvIGF2b2lkIHRoZSBwb3NzaWJsZSBzaWRl
IGVmZmVjdHMgb2YgdGhlIGxhdHRlciBhbmQga2VlcAo+Pj4gdGhlIHNrYiBwb2ludGVyICdjb25z
dCcgdGhyb3VnaCBhbGwgdGhlIHBhcnNpbmcgZnVuY3Rpb25zLgo+Pj4KPj4+IFJlcG9ydGVkLWJ5
OiBUb3NoaWFraSBNYWtpdGEgPHRvc2hpYWtpLm1ha2l0YTFAZ21haWwuY29tPgo+Pj4gUmVwb3J0
ZWQtYnk6IERhbmllbCBCb3JrbWFubiA8ZGFuaWVsQGlvZ2VhcmJveC5uZXQ+Cj4+PiBGaXhlczog
ZDdiZjJlYmViYzJiICgic2NoZWQ6IGNvbnNpc3RlbnRseSBoYW5kbGUgbGF5ZXIzIGhlYWRlciBh
Y2Nlc3NlcyBpbiB0aGUgcHJlc2VuY2Ugb2YgVkxBTnMiKQo+Pj4gU2lnbmVkLW9mZi1ieTogVG9r
ZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+Cj4+PiAtLS0KPj4gLi4uCj4+
PiBAQCAtNjIzLDEzICs1OTcsMTIgQEAgc3RhdGljIGlubGluZSBfX2JlMTYgX192bGFuX2dldF9w
cm90b2NvbChzdHJ1Y3Qgc2tfYnVmZiAqc2tiLCBfX2JlMTYgdHlwZSwKPj4+ICAgIAkJCXZsYW5f
ZGVwdGggPSBFVEhfSExFTjsKPj4+ICAgIAkJfQo+Pj4gICAgCQlkbyB7Cj4+PiAtCQkJc3RydWN0
IHZsYW5faGRyICp2aDsKPj4+ICsJCQlzdHJ1Y3Qgdmxhbl9oZHIgdmhkciwgKnZoOwo+Pj4gICAg
Cj4+PiAtCQkJaWYgKHVubGlrZWx5KCFwc2tiX21heV9wdWxsKHNrYiwKPj4+IC0JCQkJCQkgICAg
dmxhbl9kZXB0aCArIFZMQU5fSExFTikpKQo+Pj4gKwkJCXZoID0gc2tiX2hlYWRlcl9wb2ludGVy
KHNrYiwgdmxhbl9kZXB0aCwgc2l6ZW9mKHZoZHIpLCAmdmhkcik7Cj4+Cj4+IFNvbWUgZHJpdmVy
cyB3aGljaCB1c2Ugdmxhbl9nZXRfcHJvdG9jb2wgdG8gZ2V0IElQIHByb3RvY29sIGZvciBjaGVj
a3N1bSBvZmZsb2FkIGRpc2NhcmRzCj4+IHBhY2tldHMgd2hlbiBpdCBjYW5ub3QgZ2V0IHRoZSBw
cm90b2NvbC4KPj4gSSBndWVzcyBmb3Igc3VjaCB1c2VycyB0aGlzIGZ1bmN0aW9uIHNob3VsZCB0
cnkgdG8gZ2V0IHByb3RvY29sIGV2ZW4gaWYgaXQgaXMgbm90IGluIHNrYiBoZWFkZXI/Cj4+IEkn
bSBub3Qgc3VyZSBzdWNoIGEgY2FzZSBjYW4gaGFwcGVuLCBidXQgc2luY2UgeW91IGNhcmUgYWJv
dXQgdGhpcywgeW91IGtub3cgcmVhbCBjYXNlcyB3aGVyZQo+PiB2bGFuIHRhZyBjYW4gYmUgaW4g
c2tiIGZyYWdzPwo+IAo+IHNrYl9oZWFkZXJfcG9pbnRlcigpIHdpbGwgc3RpbGwgc3VjY2VlZCBp
biByZWFkaW5nIHRoZSBkYXRhLCBpdCdsbCBqdXN0Cj4gZG8gc28gYnkgY29weWluZyBpdCBpbnRv
IHRoZSBidWZmZXIgb24gdGhlIHN0YWNrICh2aGRyKSBpbnN0ZWFkIG9mCj4gbW92aW5nIHRoZSBT
S0IgZGF0YSBpdHNlbGYgYXJvdW5kLi4uCgpUcnVlLCBwcm9iYWJseSBJIG5lZWQgc29tZSBtb3Jl
IGNvZmZlZS4uLgpUaGFua3MuCgpUb3NoaWFraSBNYWtpdGEKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5i
dWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2Fr
ZQo=
