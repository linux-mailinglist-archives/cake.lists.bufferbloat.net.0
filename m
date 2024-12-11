Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id E39B99EC9BF
	for <lists+cake@lfdr.de>; Wed, 11 Dec 2024 10:55:15 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id AF9673CB43;
	Wed, 11 Dec 2024 04:55:11 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1733910911;
	bh=T4f9Te/NR+j89ZdkgalT4Rm76W5kKInf/whk4nyicUU=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=iEPFquow8c6WEW0yAx+uZHKedGKaxoF4hZkfz0c09FKKOXM28Gs+YOBgK9axTjEy8
	 2Hrt4PX+Q31Miziizg8wcO/LoZ5O9H4NAGJS5jiJzI7peFYRzRKqi+cHQZUvJ/VjaA
	 RffYuvRsP5Xh8kaWDXOK7Bs9d/d1r+lUdtLHISPYswcV7ZIhPCi2w2XDGuy+p9o4AK
	 Gqsy5G1s2keWgJw+Yk5X4Rt6HRjF+Ce9Ys8rP+jqEnGCevxT4FCYSdgIWQpkcSDcW4
	 AdHaROcLs1SWHuLHiD5MScXD2RGZduDnnZhh29EEFkFjyO0qj2sz8YpD8tZuSYv28Z
	 7TKznL3XwLxrQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 562733B29D
 for <cake@lists.bufferbloat.net>; Wed, 11 Dec 2024 04:55:10 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1733910909;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=yL4swLShGXEGPJzJdFyQY8s9h+jdCiHpiNGgFutVchM=;
 b=OL2Pyr7fyW9DRR4okVp3QNcRgdXNHALQaYe5FonDPlPb5xvTrc+tI71/ZijsYmp+5IbM7L
 4T1K1Gp3awW3IQ9bQ1OL+4n7jyQNWfNEbQIFUPmgAyxaNaTO1isPZBKbWRR9At5b5CMgwq
 wKwVSLYWjeYJ9b/yvMoS4R8VR0EdRww=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-594-Fx5VgGUINR6xHUIlkPG17A-1; Wed, 11 Dec 2024 04:55:06 -0500
X-MC-Unique: Fx5VgGUINR6xHUIlkPG17A-1
X-Mimecast-MFC-AGG-ID: Fx5VgGUINR6xHUIlkPG17A
Received: by mail-wm1-f69.google.com with SMTP id
 5b1f17b1804b1-4359206e1e4so14823035e9.2
 for <cake@lists.bufferbloat.net>; Wed, 11 Dec 2024 01:55:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1733910905; x=1734515705;
 h=content-transfer-encoding:mime-version:message-id:date:references
 :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=hGxEwZFcgw+OIxs4XY/stYiI3kdgLhPXYpx3ZnemYyk=;
 b=ikp2tOjuILr8PZX8HGOntng4NRvpJibqNh4KJnojQK5SxFL3XVS/w04umFOCEPggeu
 8Kht7HzyaBNetDY75PldkEPDFjYvLbh/XqE2VN/P+M9H8XZzpyu+gj8ms5zCMhYewQ5h
 mkpqVteaHMgIU77tK0yWwOl5gGSc8eroYpJcZdnoUhjyjQnRHwW5E0xdJIO60MKYP7mo
 9uiXo5JkiRub329jKgzf7c7f1kB8dwdz1r4X1Mx5kHZ6hYlRgozipFV4HRYaprSzhYP3
 b1/2mYdWMutvL+cjqiyC1RqDIhZcKCuXmX7XGmaCRCvLXAsf/ndX/BpvGd7zVDgLXEHl
 PtEA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWPyLWVRsdHCzY+Wv2P0lVfDBWvOW3kZecMHi7vAkXSJrQ7E7V60EaNOMdR4gbEKphOVyRe@lists.bufferbloat.net
X-Gm-Message-State: AOJu0Yy39cS6TyFGKNXIYXER0Y4sOzDkvqJ7e44Rgz0dXEn1aHQX5POk
 1sM15O0UsAllvuL+Cu31krA/R4vqGJ6C0ukls4Zv/NYJEPs/YFaFQeZd2yxb4L2M5XKpB/XnaCn
 dlEobzPVuEvz6HlIBh5nxrriQQMrKfhUiW88q0y9MWtTO0lRnm+0fxbjCdFs=
X-Gm-Gg: ASbGncvwc2d/1sv+F002i6eaiIb3CBfJCQoQ05bMIwdvj+EDVzOKQ1og9doQx105bRO
 NFmrogy8EyNUx7UfxN8ifhSwWpJFGtFqcJ3FzvE4gb+QgtPeulHl0wandF4s8JntiLsggARlhO0
 VubeGRexjx7f0Ouep4CbS0Yz7kuWVgD706aTM2W5zWQKwepTLV81oKdJMWEwhN9rEZB+pLDadTT
 fWA6a6rgAbU3UQ5XkLNp6hxW4wiXHDkjtYvEFWQ2CpC6XmOp57ckf6dlq/UHwbgt+NkPgiIogsQ
 wWc=
X-Received: by 2002:a5d:6da4:0:b0:386:1ab5:f0e1 with SMTP id
 ffacd0b85a97d-3864ce968c0mr1757256f8f.14.1733910905403; 
 Wed, 11 Dec 2024 01:55:05 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFWcbbdKQFeVBc5klJwqbHNmJKc5NGnuoW0xJ3gO9Ldk9/d5zthhScXLmcTcJPA97zDpXrgmQ==
X-Received: by 2002:a5d:6da4:0:b0:386:1ab5:f0e1 with SMTP id
 ffacd0b85a97d-3864ce968c0mr1757234f8f.14.1733910904981; 
 Wed, 11 Dec 2024 01:55:04 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-387824c384esm897022f8f.56.2024.12.11.01.55.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2024 01:55:04 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 52C3B16BDC45; Wed, 11 Dec 2024 10:55:03 +0100 (CET)
To: Jakub Kicinski <kuba@kernel.org>
In-Reply-To: <20241210172802.410c76a6@kernel.org>
References: <20241209-cake-drop-reason-v1-1-19205f6d1f19@redhat.com>
 <20241209155157.6a817bc5@kernel.org>
 <CAA93jw4chUsQ40LQStvJBeOEENydbv58gOWz8y7fFPJkATa9tA@mail.gmail.com>
 <87a5d46i9c.fsf@toke.dk> <20241210172802.410c76a6@kernel.org>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Wed, 11 Dec 2024 10:55:03 +0100
Message-ID: <87sequ5ytk.fsf@toke.dk>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: ldQDAUqkSUxCTtXxnsm2DV36A-NwxFkuRf7r6l1cffE_1733910905
X-Mimecast-Originator: redhat.com
Subject: Re: [Cake] [PATCH net-next] net_sched: sch_cake: Add drop reasons
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
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= via Cake
 <cake@lists.bufferbloat.net>
Reply-To: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Cc: Jiri Pirko <jiri@resnulli.us>, netdev@vger.kernel.org,
 Jamal Hadi Salim <jhs@mojatatu.com>, cake@lists.bufferbloat.net,
 Eric Dumazet <edumazet@google.com>, Simon Horman <horms@kernel.org>,
 Cong Wang <xiyou.wangcong@gmail.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz4gd3JpdGVzOgoKPiBPbiBUdWUsIDEwIERl
YyAyMDI0IDA5OjQyOjU1ICswMTAwIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiB3cm90ZToKPj4g
PiBXaGlsZSBJIGluaXRpYWxseSBhZ3JlZWQgd2l0aCBtYWtpbmcgdGhpcyBnZW5lcmljLCBwcmVz
ZXJ2aW5nIHRoZSBxZGlzYyBmcm9tCj4+ID4gd2hlcmUgdGhlIGRyb3AgY2FtZSBsZXRzIHlvdSBz
YWZlbHkgaW5zcGVjdCB0aGUgY2IgYmxvY2sgKHRpbWVzdGFtcCwgZXRjKSwKPj4gPiBmb3JtYXQg
b2Ygd2hpY2ggdmFyaWVzIGJ5IHFkaXNjLiBZb3UgYWxzbyBnZXQgaW5zaWdodCBhcyB0byB3aGlj
aAo+PiA+IHFkaXNjIHdhcyBkcm9wcGluZy4KPj4gPgo+PiA+IERvd25zaWRlIGlzIHdlJ2xsIGVu
ZCB1cCB3aXRoIFNLQl9EUk9QX1JFQVNPTl9YWFhfT1ZFUkxJTUlUIGZvcgo+PiA+IGVhY2ggb2Yg
dGhlIHFkaXNjcy4gRXRjLiAgCj4+IAo+PiBZZWFoLCBJIGFncmVlIHRoYXQgYSBnZW5lcmljICJk
cm9wcGVkIGJ5IEFRTSIgcmVhc29uIHdpbGwgYmUgdG9vIGdlbmVyaWMKPj4gd2l0aG91dCBrbm93
aW5nIHdoaWNoIHFkaXNjIGRyb3BwZWQgaXQuCj4KPiBXaHkgZG9lcyB0eXBlIG9mIHRoZSBxZGlz
YyBtYXR0ZXIgaWYgdGhlIHFkaXNjIHdhcyBvdmVybGltaXQ/CgpXZWxsLCBJIHdhcyB0aGlua2lu
ZyB5b3UnZCB3YW50IHRvIGZpZ3VyZSBvdXQgd2hpY2ggZGV2aWNlIGl0IHdhcwpkcm9wcGVkIGZy
b20sIGJ1dCBJIGd1ZXNzIHlvdSBoYXZlIHNrYi0+ZGV2IGZvciB0aGF0IChhbmQgY291bnRlcnMp
LgoKPj4gSSBndWVzcyBhbnkgY2FsbHMgZGlyZWN0bHkgdG8ga2ZyZWVfc2tiX3JlYXNvbigpIGZy
b20gdGhlIHFkaXNjIHdpbGwKPj4gcHJvdmlkZSB0aGUgY2FsbGluZyBmdW5jdGlvbiwgYnV0IGZv
ciBxZGlzY19kcm9wX3JlYXNvbigpIHRoZSBkcm9wCj4+IHdpbGwgYmUgZGVmZXJyZWQgdG8gX19k
ZXZfcXVldWVfeG1pdCgpLCBzbyBubyB3YXkgb2Yga25vd2luZyB3aGVyZQo+PiB0aGUgZHJvcCBj
YW1lIGZyb20sIEFGQUlDVD8KPgo+IENhbiB5b3UgdGVsbCBtZSB3aHkgSSdkIG5lZWQgdG8gaW5z
cGVjdCB0aGUgc2tiLT5jYltdIGluIGNha2UgaWYgcGFja2V0Cj4gaXMgb3ZlcmxpbWl0PyBBY3R1
YWxseSwgbm9uZSBvZiB0aGUgZmllbGRzIG9mIHRoZSBjYiBhcmUgaW5pdGlhbGl6ZWQKPiB3aGVu
IHRoZSBwYWNrZXQgaXMgZHJvcHBlZCBmb3Igb3ZlcmxpbWl0LCBBRkFJVS4KPgo+IElmIHNvbWVv
bmUgaXMgZG9pbmcgc2VyaW91cyAvIGFkdmFuY2VkIGRlYnVnIHRoZXkgbW9zdGx5IGNhcmUgYWJv
dXQKPiBhY2Nlc3MgdG8gdGhlIHFkaXNjIGFuZCBjYW4gdHJpdmlhbGx5IGNoZWNrIGlmIGl0cyBv
cHMgbWF0Y2ggdGhlCj4gZXhwZWN0ZWQgc3ltYm9sLiAoU3BlYWtpbmcgZnJvbSBleHBlcmllbmNl
LCBJJ3ZlIGJlZW4gZGVidWdnaW5nIEZRCj4gcGFja2V0IGxvc3Mgb24gTm92IDIzcmQuKQo+Cj4g
SWYgc29tZW9uZSBpcyBqdXN0IGRvaW5nIGhpZ2ggbGV2ZWwgZHJvcCBhdHRyaWJ1dGlvbiBoYXZp
bmcgdG8gbGlzdCBhbGwKPiBwb3NzaWJsZSBxZGlzY3MgdW5kZXIgInFkaXNjIGRpc2NhcmQiIGlz
IHB1cmVseSBwYWluLgo+Cj4gQ2FuIHdlIHN0YXJ0IHdpdGggT1ZFUkxJTUlUIGFuZCBDT05HRVNU
SU9OIGFzIGdlbmVyaWMgdmFsdWVzIGFuZCB3ZSBjYW4KPiBzcGVjaWFsaXplIGlmIGFueW9uZSBo
YXMgYSBjbGVhciBuZWVkPwoKT0ssIEknbGwgcmVzcGluIGFuZCBkcm9wIENBS0UgZnJvbSB0aGUg
bmFtZXMgb2YgdGhvc2UgdHdvLi4uCgotVG9rZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJi
bG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
