Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B8E3196907
	for <lists+cake@lfdr.de>; Sat, 28 Mar 2020 20:58:19 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 6AAC93CB3C;
	Sat, 28 Mar 2020 15:58:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1585425497;
	bh=gGttXBKxOFyzErMjLyWYzKXneoT7eFYCrOwLA/3vtQo=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EkODjT5dS1D0nQuTQ8Rw1AAbbvPkQFYA7YoGTmEDv3K4Ls2XHXVWIIZN1gvjw00gn
	 ikoQx4usPzSMwVlZYTQCqs6kFzGh/ejQp/0XX+j7WkkX3J0LWhhAYY1o2qBbjGJTua
	 oFrtMcmZCM8pEVFxOoWO/vp5ZVwQoS7+jblaY7bpZ+FcrUlLeezQJgnlZ2dP8FT+BV
	 WINsSYAyB3ilfzWacZ4JuMFKOXjnak25mqTpAQccbKh+iuJwpsAiIwhEKbiiVKFnqL
	 y+/E9SRorNsmz2BH6KJfn9aEGsvr3ui9y3Np3M6Ga/wETzn27ubuRyQE/QmNKj0+zh
	 z+dcWPo2dmMIg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-delivery-74.mimecast.com
 (us-smtp-delivery-74.mimecast.com [63.128.21.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id AA3F23CB35
 for <cake@lists.bufferbloat.net>; Sat, 28 Mar 2020 15:58:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585425494;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=X0W13ZR8OK6A0LCu6SU3hZ2sjSiwybH3M4Yx3ll1vXE=;
 b=fvobG0ffyVOSTD6MhNZQTyK3DpAwAzDxXYM2qIjbSTJeKMU8HTOlxPEzyW7l9ZNEisC7Ck
 1RXih0ECSTds44yMXKg+Z/f+J/1w1WqPmhQgeHQJuqilShhh+1t0HphOv+HJaA76/TB9VB
 z/NEgmgYTj+3cocFNo2oG9qfYQQTyDU=
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com
 [209.85.167.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-436-j-a8qAKzPciY-D02-T_x8w-1; Sat, 28 Mar 2020 15:58:12 -0400
X-MC-Unique: j-a8qAKzPciY-D02-T_x8w-1
Received: by mail-lf1-f72.google.com with SMTP id c22so2775020lfb.14
 for <cake@lists.bufferbloat.net>; Sat, 28 Mar 2020 12:58:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=X0W13ZR8OK6A0LCu6SU3hZ2sjSiwybH3M4Yx3ll1vXE=;
 b=naYzNK7Wt/JARByt/IjYhAE6S0zDHhv2IvYwK/6GpqFXuCl9zEY91P9sUAK2X6tqSu
 NTCVOrJEN88UO4OtbucqcDl61iTAt1yTDzP2wrr+bYEFvydze+HuMWMA9qcjc6/i1FNi
 o4ks2dlJw8/WxdonjBAmMs+cgDvrZC0srMVK/AhnLwtPgfI4AJMhw+f+A74EMfqe+kvP
 RPZtZz1qIAAFqX+NzfbRtNn0Opy31D8i+z7jt3x2X8cRavzWLCbLGjY/9JZ97kqyp1bS
 0CE6646xmr3+f2XtOoawcO8d3Ys+JwE+XZagBMxjWTNSdlq+3vCAcnz+aA9wAGdXwTUx
 Iegw==
X-Gm-Message-State: AGi0PuZF2vrwcKht1g+2esI6/k06OQpUAwyVIXEhz0T9g1a5QSCRmeS/
 q9jaoOaBrA9pAMTdcUNTs3qM1fcgJ7OfvjKDZyiJxJ4Iff4b4SQRx5mouPqjeLMjADI/B+pFmV6
 A1iWyJ2uWpV1C+V9VhH41oA==
X-Received: by 2002:a2e:9757:: with SMTP id f23mr2836234ljj.269.1585425491125; 
 Sat, 28 Mar 2020 12:58:11 -0700 (PDT)
X-Google-Smtp-Source: APiQypJ7vkGFp2jEgE/fIb1d6LH2TJScU7xorzZbUbLh5epUrNRP11bNad+0S5LsQewjX6ESAsTPfw==
X-Received: by 2002:a2e:9757:: with SMTP id f23mr2836218ljj.269.1585425490831; 
 Sat, 28 Mar 2020 12:58:10 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
 by smtp.gmail.com with ESMTPSA id y26sm3345794lfl.95.2020.03.28.12.58.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 28 Mar 2020 12:58:10 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 57E5C18158B; Sat, 28 Mar 2020 20:58:08 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Dave Taht <dave.taht@gmail.com>, "David P. Reed" <dpreed@deepplum.com>
In-Reply-To: <CAA93jw6o3N-3Yeox5NfP5T9=Ascpa9UXkpgw2fyX4NaMAvb8iA@mail.gmail.com>
References: <CAA93jw7u5xtq9fzx9iCMd5StW4A=rY7D74YYbKRgAo+5YVajHw@mail.gmail.com>
 <1585335604.839628636@apps.rackspace.com>
 <CAA93jw6o3N-3Yeox5NfP5T9=Ascpa9UXkpgw2fyX4NaMAvb8iA@mail.gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Sat, 28 Mar 2020 20:58:08 +0100
Message-ID: <878sjkl0a7.fsf@toke.dk>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Cake] mo bettah open source multi-party videoconferncing in an
	age of bloated uplinks?
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
Cc: Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Anthony Minessale II <anthm@freeswitch.org>,
 Cake List <cake@lists.bufferbloat.net>, Ken Rice <krice@freeswitch.org>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RGF2ZSBUYWh0IDxkYXZlLnRhaHRAZ21haWwuY29tPiB3cml0ZXM6Cgo+PiBTbzogMS4gV2UgcmVh
bGx5IHNob3VsZCByZXRoaW5rIGhvdyB0aW1pbmctc2Vuc2l0aXZlIGFsZ29yaXRobXMgYXJlCj4+
IGV4cHJlc3NlZCwgYW5kIGl0IGlzbid0IGdvbm5hIGJlIGdvb2QgdG8gYmFzZSB0aGVtIG9uIHNl
bWFwaG9yZXMgYW5kCj4+IHRocmVhZHMgdGhhdCBydW4gYXQgcmFuZG9tIHJhdGVzLiBUaGF0IG1l
YW5zIGEgdmVyeSBkaWZmZXJlbnQgT1MKPj4gY29uY2VwdHVhbCBmcmFtZXdvcmsuIENhbiB0aGlz
IHNoYXJlIHdpdGgsIHNheSwgdGhlIExpbnV4IHdlIGtub3cgYW5kCj4+IGxvdmUgLSB5ZXMsIHRo
ZSBoYXJkd2FyZSBjYW4gYmUgc2hhcmVkLiBPbmUgc2hvdWxkIGJlIGFibGUgdG8KPj4gZGVkaWNh
dGUgdmlydHVhbCBwcm9jZXNzb3JzIHRoYXQgYXJlIG5vdCBydW5uaW5nIExpbnV4IHByb2Nlc3Nl
cywgYnV0Cj4+IGluc3RlYWQgYW5vdGhlciBjb21wdXRhdGlvbmFsIG1vZGVsIChkYXRhZmxvdz8p
Lgo+Cj4gTGludXggc3dpdGNoZWQgdG8gYW4gRURGIG1vZGVsIGZvciBuZXR3b3JraW5nIGluIDUu
MAoKTm90IGVudGlyZWx5LiBUaGVyZSdzIEVEVCBzY2hlZHVsaW5nLCBhbmQgdGhlIFRDUCBzdGFj
ayBpcyBtb3N0bHkKc3dpdGNoZWQgb3ZlciwgSSB0aGluay4gQnV0IGFzIGFsd2F5cywgTGludXgg
ZXZvbHZlcyBwaWVjZW1hbCA6KQoKPj4gMi4gRUJQRiBpcyBpbnRlcmVzdGluZywgYmVjYXVzZSBp
dCBpcyBtb3JlIHNlY3VyZSwgYW5kIGlzIGFnYWluCj4+IGZvY3VzZWQgb24gcnVubmluZyBjb2Rl
IGF0IGtlcm5lbCBsZXZlbCwgZXZlbnQtZHJpdmVuLiBJIHRoaW5rIGl0Cj4+IHdvdWxkIGJlIGEg
c2VyaW91c2x5IGRpZmZpY3VsdCBsaWZ0IHRvIGdldCBpdCB0byB0aGUgcG9pbnQgd2hlcmUgb25l
Cj4+IGNvdWxkIHByb2dyYW0gdGhlIG5ldHdvcmtlZCBtZWRpYSBwcm9jZXNzaW5nIGluIEJQRi4K
Pgo+IEJ1dCB0aGVyZSBpcyBodWdlIGRlbWFuZCBmb3IgaXQsIHNvIHBlb3BsZSBhcmUgd3JpdGlu
ZyB3YXkgbW9yZSBpbiBpdAo+IHRoYW4gaSBldmVyIGV2ZXIgdGhvdWdodCBwb3NzaWJsZS4uLiBv
ciBkZXNpcmFibGUuCgpUZWxsIG1lIGFib3V0IGl0LgoKV2UgaGF2ZSBzZWVuIGEgYml0IG9mIGlu
dGVyZXN0IGZvciBjb21iaW5pbmcgZUJQRiB3aXRoIHJlYWx0aW1lLCB0aG91Z2guCldpdGggdGhl
IHVwc3RyZWFtaW5nIG9mIHRoZSByZWFsdGltZSBjb2RlLCBzdXBwb3J0IGhhcyBsYW5kZWQgZm9y
CnJ1bm5pbmcgZUJQRiBldmVuIG9uIHJlYWx0aW1lIGtlcm5lbHMuIEFuZCB3ZSdyZSBzdGFydGlu
ZyB0byBzZWUgYSBiaXQKb2YgaW50ZXJlc3QgZm9yIGxvb2tpbmcgc3BlY2lmaWNhbGx5IGF0IGxh
dGVuY3kgYm91bmRzIGZvciBuZXR3b3JrCnByb2Nlc3NpbmcgKGZvciBUU04pLCBpbmNsdWRpbmcg
WERQLiBOb3RoaW5nIGNvbmNyZXRlIHlldCwgdGhvdWdoLgoKLVRva2UKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VA
bGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3Rp
bmZvL2Nha2UK
