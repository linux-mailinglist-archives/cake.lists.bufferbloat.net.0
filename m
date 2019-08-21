Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id F1A0F97DA3
	for <lists+cake@lfdr.de>; Wed, 21 Aug 2019 16:52:56 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 8E3043CB38;
	Wed, 21 Aug 2019 10:52:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1566399175;
	bh=eJOnAMJpsvwziFiWd45g1++38JZtiPYoQTaTf3ibZcQ=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IOqJ6ZYnXR4wLJOpFYW6wWCpOD8j1o7KyoJKygo7DNTSCUFeoBFUj3vsDjiWcNqLa
	 PwiANEA1r9V9KwOFwGDlqCQNPW/2TRf2g3NtNsXOY0XduI8OaS8R+cz7Zv+csOG/3/
	 9kmyJIRrDEd54B2ttet4Qz1NlN3l37W7KryiEqUGoOQcDtq5KbttRtZnjGPdJE47Oc
	 g/h9mB5Sq7yQDn4x8gpjNv3UEtVupQ72Rj/TbxzgovDoAnZx5DlYEXHKudfiUxXpDr
	 bSV3gXXB1STgqCZa2+APdIr3TY8+sAsYNnTHBQgAvcYNifx5K7/gGHopfPWvvCgloo
	 bm0XzzANcge3Q==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com
 [IPv6:2a00:1450:4864:20::236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 988823CB35
 for <cake@lists.bufferbloat.net>; Wed, 21 Aug 2019 10:52:53 -0400 (EDT)
Received: by mail-lj1-x236.google.com with SMTP id x18so2447497ljh.1
 for <cake@lists.bufferbloat.net>; Wed, 21 Aug 2019 07:52:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=0bC8XtbAvZydo6jvMH2pGaLY5BKGHNj9ccysrZomuOY=;
 b=M4rQAIauap+KNF1sosgCiup2x22omIy3X88GLxVmqKqyHcz1xr+eWFlvG1jasFysj8
 0MvGT8dIK0XtRVPX5AZWl9G6deGTDpuyfI9qiHiyYW4Lzr56aQp/c2N6BKCVS4/gZbDq
 Y2w405MVrF7a0x3nZ3sps2Ic4AsZsuSOMEs6v3L0jwVwkZOfjI20yBv6LBIz6dfNbnyD
 4zWtpVLkja/Tc/mOfLWLNayCl9yGmUNoCGm+UE/KJQdlzY2gT00sJusC4O0tcqxy4At6
 5v8plIKTU2xfGZ8N/QOIIvOPZ/YYOmkfFTQxzeufupDn+XYPp4EHllsoCBagxhe7327G
 8WFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=0bC8XtbAvZydo6jvMH2pGaLY5BKGHNj9ccysrZomuOY=;
 b=md6UjjXxQLwwJcQa0UJPwYoMJKahe9ixUWRl3qc6U4nftjBnA7ws8BKpRXxp1NPkvM
 NUW0HN1zMMHcR0PknIyJAOOtU5vPZO/iqSgUtxbACmnWjdLp1C3oWlUgPEw0us4XMeNF
 nnmLoqYQqrr2LOx+AO3EOu1qPrDvowdG8ztaCMI/XROAxsnhmJYq4z53LFehdIZrMjuO
 itMerxrNn0f0UocOQT0XaCqOpJqiJc5mjg6wglxQIJogyxf4LHUsPTifJ0D+4BEpq2Mh
 O9ZYlSlV0bqSGV8boxTB+lMnod/MZKFHMsJi5hoS1RWSK/FiwTT+OaRPbun5ehCQZtwZ
 1vmA==
X-Gm-Message-State: APjAAAWc7j+w6euVToOlJGEkTNzpK7Dion3HrLgHfyDMurNjOzgEOhMc
 /Z4JVsAcyxCHeCqEai0lJds=
X-Google-Smtp-Source: APXvYqwcu4yhpz52B9PgW1fjvkLSkX3Aswvhn53Bs5K6JdJr3ndSgdgKCuKt5sGkUej42zelUKkQ3g==
X-Received: by 2002:a2e:9d2:: with SMTP id 201mr18563212ljj.229.1566399172558; 
 Wed, 21 Aug 2019 07:52:52 -0700 (PDT)
Received: from jonathartonsmbp.lan (83-245-237-193-nat-p.elisa-mobile.fi.
 [83.245.237.193])
 by smtp.gmail.com with ESMTPSA id 201sm3321931ljj.1.2019.08.21.07.52.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 21 Aug 2019 07:52:51 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <87wof6rf7t.fsf@toke.dk>
Date: Wed, 21 Aug 2019 17:52:50 +0300
Message-Id: <7656FCDE-C590-4B0C-B191-B9FAC928A762@gmail.com>
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
 <87wof6rf7t.fsf@toke.dk>
To: =?utf-8?Q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
X-Mailer: Apple Mail (2.3445.9.1)
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

PiBPbiAyMSBBdWcsIDIwMTksIGF0IDE6MjEgcG0sIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiA8
dG9rZUByZWRoYXQuY29tPiB3cm90ZToKPiAKPj4gQWxzbyBpdCBzZWVtcyBsaWtlIGEgZ29vZCBp
ZGVhIHRvIGFsc28gc3VibWl0IHRoZSBOUyBiaXQKPj4gZXhjbHVzaW9uIGZyb20gdGhlIGFjayBm
aWx0ZXIgdG8gbWFpbmxpbmUgYXMgd2VsbC4KPiAKPiBXaGF0J3MgdGhhdD8KClRoZSBhY2stZmls
dGVyIGhhcyBydWxlcyBhYm91dCB3aGljaCBiaXRzIGFuZCBvcHRpb25zIGNoYW5naW5nIG5lZWQg
dG8gYmUgcHJlc2VydmVkIHRvIGF2b2lkIGxvc2luZyBpbmZvcm1hdGlvbiBmcm9tIHRoZSBhY2sg
c3RyZWFtLCBhbmQgdGhlcmVmb3JlIHByZXZlbnQgdHdvIGFja3MgZnJvbSBiZWluZyBjb2FsZXNj
ZWQuCgpUaGUgdmVyc2lvbiBvZiBDYWtlIGluIHRoZSBTQ0UgdHJlZSBhZGRzIHRoZSBmb3JtZXIg
TlMgYml0ICh3aGljaCBTQ0UgdXNlcyBhcyBFU0NFKSB0byB0aGF0IGxpc3QuICBTQ0Ugc3RpbGwg
d29ya3MgZmluZSB3aXRob3V0IHRoYXQgcGF0Y2gsIGl0IGp1c3QgcHJlc2VydmVzIG1vcmUgaW5m
b3JtYXRpb24gb24gdGhlIHJldmVyc2UgcGF0aCBhbmQgdGh1cyBtYWtlcyB0aGUgYmVoYXZpb3Vy
IGEgYml0IHNtb290aGVyLgoKIC0gSm9uYXRoYW4gTW9ydG9uCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMu
YnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nh
a2UK
