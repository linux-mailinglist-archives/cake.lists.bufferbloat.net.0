Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB574E9C6F
	for <lists+cake@lfdr.de>; Mon, 28 Mar 2022 18:42:59 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 941283CB38;
	Mon, 28 Mar 2022 12:42:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1648485777;
	bh=kTvTrHaxnhw3cP6oWcq9qmhUBrvD7aTQds4wQsQ0Slo=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gTAh4vNI5WnJrcb8HJ0CoiW5zVWW4SRFBuv1KhsvYNOXoqTMpaoCxLXhMGUqByiJG
	 CVFuUkViLD5YZKeKMBQ0LstIGHjzryxegt70tcqDzY/J+x4J4UpU5aHzt4MsSROPNl
	 IidtNNRDMW1VHy83wfGk8D262R91yfSj7q9vUDix4tOJKN0DY2WzDEx370swN+RyNt
	 LvGkiWJcJdMjBL/RlitGnPVx1f+aoaS6btnWktuPIur6y18KSMZnfqu91AQlYi2StU
	 Vehs2I4yLNWM20cfSOR2/6EZXlQU7vC0ABz5NCoV6q32AHZGQ0jhzdxnS12qxuoKSj
	 QOa06NWuDhLaw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 40B363B2A4
 for <cake@lists.bufferbloat.net>; Mon, 28 Mar 2022 12:42:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1648485775;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=fmjqOD3BHl74OkWJZQBaV4zUSFxZmdbs1YlkDjt8Mso=;
 b=HibXWvBE2ZcIjpcxcO4eI0OtJtpUwisdhI+w4ZO/EgW8A34sofxaa/CY+YD0loj3DUuQim
 EYpcFPvdA0tcYR+RicX1lOir2iocjQkQ59J4EVkTSM1Z32QNsrkbx5Jg4oljJWGrl1yAVZ
 gSCwMW14sG3iVqwcZQah4fodPckL7m0=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-339-50vytxaRNLKk2eqfZiHd3g-1; Mon, 28 Mar 2022 12:42:54 -0400
X-MC-Unique: 50vytxaRNLKk2eqfZiHd3g-1
Received: by mail-ed1-f70.google.com with SMTP id
 c22-20020a50f616000000b004196649d144so9261241edn.10
 for <cake@lists.bufferbloat.net>; Mon, 28 Mar 2022 09:42:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=fmjqOD3BHl74OkWJZQBaV4zUSFxZmdbs1YlkDjt8Mso=;
 b=3dGbgBcJmXPIuCuhRNXdx3cT1xGZxYcfSob1z6mijuppFUBCZj35mvIbX/+znSN6nV
 TWD/2cRHAR9AS5dgoWA/O2rD0RIrWu4EksbJDyknp4B//NHa3VdLBnWXzRwI0Z8aX65t
 Ky8QxOzmxE4yc9n/PSbnKT1CXqCrwQzk7IAP16e9ydC2AeyJl/kvYelltolTFa7ywFKG
 tRHPN6pHzydX/AAAxHmlmr8vq2bjO1G+vIZXef2AEbvsuie0/Xz/Flw/Lz73z/O4JyOm
 TW1fBRlRCSVTZy+z7hc8qlTkQEeRwqpr9CBltxUKE2J2lUwy8BO2crzBGKoJW0FIcw26
 pInw==
X-Gm-Message-State: AOAM531qUw6BwynLjugxmoo/sZna/0u4g7lZFjcGmNij8s92bTH38LOv
 YS2bsELOJ407ODWtiQFBI7rCi3iUFNcYmEjjo4nphMBZDI6p6TzhzPgGUILSiGBuxKB0dgpru4W
 1RMykQYNodBsunaSLYHGiBw==
X-Received: by 2002:a17:906:69d1:b0:6ce:7201:ec26 with SMTP id
 g17-20020a17090669d100b006ce7201ec26mr29008769ejs.105.1648485767576; 
 Mon, 28 Mar 2022 09:42:47 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzKl2T4YNWrX/G/bLyX2wwQvRxTA6uAkjsCaHLi/EPyI7kjYU0rENziBQoKf+YQfsM/0GREpQ==
X-Received: by 2002:a17:906:69d1:b0:6ce:7201:ec26 with SMTP id
 g17-20020a17090669d100b006ce7201ec26mr29007877ejs.105.1648485757354; 
 Mon, 28 Mar 2022 09:42:37 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
 by smtp.gmail.com with ESMTPSA id
 z5-20020a1709063a0500b006da8fa9526esm6164674eje.178.2022.03.28.09.42.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Mar 2022 09:42:36 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 224592279E0; Mon, 28 Mar 2022 18:42:36 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Christophe Leroy <christophe.leroy@csgroup.eu>, "David S.
 Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Jamal Hadi
 Salim <jhs@mojatatu.com>, Cong Wang <xiyou.wangcong@gmail.com>, Jiri Pirko
 <jiri@resnulli.us>, Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <079a3b29-fec7-97c9-19d9-0bd9a17e63f1@csgroup.eu>
References: <356a242a964fabbdf876a18c7640eb6ead6d0e6b.1648468695.git.christophe.leroy@csgroup.eu>
 <87bkxq5bgt.fsf@toke.dk> <079a3b29-fec7-97c9-19d9-0bd9a17e63f1@csgroup.eu>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Mon, 28 Mar 2022 18:42:36 +0200
Message-ID: <875yny58qr.fsf@toke.dk>
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=toke@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Cake] [PATCH net-next] sch_cake: Take into account guideline
 DEF/DGSIC/36 from French Administration
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
Cc: "cake@lists.bufferbloat.net" <cake@lists.bufferbloat.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

Q2hyaXN0b3BoZSBMZXJveSA8Y2hyaXN0b3BoZS5sZXJveUBjc2dyb3VwLmV1PiB3cml0ZXM6Cgo+
IExlIDI4LzAzLzIwMjIgw6AgMTc6NDMsIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiBhIMOpY3Jp
dMKgOgo+PiBDaHJpc3RvcGhlIExlcm95IDxjaHJpc3RvcGhlLmxlcm95QGNzZ3JvdXAuZXU+IHdy
aXRlczoKPj4gCj4+PiBGcmVuY2ggQWRtaW5pc3RyYXRpb24gaGFzIHdyaXR0ZW4gYSBndWlkZWxp
bmUgdGhhdCBkZWZpbmVzIGFkZGl0aW9uYWwKPj4+IERTQ1AgdmFsdWVzIGZvciB1c2UgaW4gaXRz
IG5ldHdvcmtzLgo+PiAKPj4gSHVoLCB0aGF0J3MgaW50ZXJlc3RpbmchCj4+IAo+Pj4gQWRkIG5l
dyBDQUtFIGRpZmZzZXJ2IHRhYmxlcyB0byB0YWtlIHRob3NlIG5ldyB2YWx1ZXMgaW50byBhY2Nv
dW50Cj4+PiBhbmQgYWRkIENPTkZJR19ORVRfU0NIX0NBS0VfREdTSUMgdG8gc2VsZWN0IHRob3Nl
IHRhYmxlcyBpbnN0ZWFkIG9mCj4+PiB0aGUgZGVmYXVsdCBvbmVzLgo+PiAKPj4gLi4uaG93ZXZl
ciBJIGRvbid0IHRoaW5rIHdlIHNob3VsZCBiZSBpbmNsdWRpbmcgc29tZXRoaW5nIHRoaXMKPj4g
c3BlY2lhbC1wdXJwb3NlIGludG8gdGhlIHFkaXNjIGtlcm5lbCBjb2RlLCBhbmQgY2VydGFpbmx5
IHdlIHNob3VsZG4ndAo+PiBoYXZlIGEgY29uZmlnIG9wdGlvbiB0aGF0IGNoYW5nZXMgdGhlIG1l
YW5pbmcgb2YgdGhlIGV4aXN0aW5nIGRpZmZzZXJ2Cj4+IGtleXdvcmRzIQo+Cj4gQnkgdGhlIHdh
eSBpdCBkb2Vzbid0IHJlYWxseSBjaGFuZ2UgbWVhbmluZy4gSnVzdCBlbmhhbmNlcyBpdCBpbmRl
ZWQuIAo+IEJlY2F1c2UgdGhleSBhcmUgbm90IGNoYW5naW5nIHRoZSBtZWFuaW5nIG9mIGV4aXN0
aW5nIERTQ1AgY29kZXMsIGp1c3QgCj4gYWRkaW5nIG5ldyBvbmVzLgoKQWgsIE9LLCBidXQgdGhl
biBpdCdzIGV2ZW4gZWFzaWVyLCB5b3UgY2FuIGp1c3QgYWRkIHJ1bGVzIGZvciB0aGUgbmV3CnZh
bHVlcyB1c2luZyB0aGUgdXNlcnNwYWNlIG9wdGlvbnMgYW5kIGxldCBjYWtlIHNlbGVjdCB0aGUg
cmVzdCB1c2luZwp0aGUgZXhpc3RpbmcgY29kZS4KCj4+IFJhdGhlciwgdGhpcyBpcyBzb21ldGhp
bmcgdGhhdCBpcyBiZXN0IHNwZWNpZmllZCBmcm9tIHVzZXJzcGFjZTsgYW5kIGluCj4+IGZhY3Qg
Q2FrZSBhbHJlYWR5IGhhcyBubyBsZXNzIHRoYW4gdHdvIGRpZmZlcmVudCB3YXlzIHRvIGRvIHRo
aXM6IHRoZQo+PiAnZndtYXJrJyBvcHRpb24sIGFuZCBzZXR0aW5nIHRoZSBza2ItPnByaW9yaXR5
IGZpZWxkLiBIYXZlIHlvdSB0cmllZAo+PiB1c2luZyB0aG9zZT8KPgo+IE5vIEkgaGF2ZSBub3Qu
IEluIGZhY3QgSSdtIGp1c3QgZGlzY292ZXJpbmcgdGhlIHN1YmplY3QgYWZ0ZXIgc29tZSAKPiBw
ZW9wbGUgdG9sZCBtZSAid2UgYXJlIGNvbnRyYWN0dWFsbHkgcmVxdWlyZWQgdG8gYXBwbHkgdGhp
cyBndWlkZWxpbmUsIAo+IHBsZWFzZSBtYWtlIHN1cmUgTGludXgga2VybmVsIHN1cHBvcnRzIGl0
Ii4KPgo+IEknbGwgZ2l2ZSAnZndtYXJrJyBhbmQvb3Igc2tiLT5wcmlvcml0eSBhIHRyeS4gSXMg
dGhlcmUgYW55IAo+IERvY3VtZW50YXRpb24gb24gdGhhdCBzb21ld2hlcmUgPwoKQm90aCBhcmUg
ZG9jdW1lbnRlZCBpbiB0aGUgdGMtY2FrZSBtYW4gcGFnZS4KCi1Ub2tlCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtl
QGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0
aW5mby9jYWtlCg==
