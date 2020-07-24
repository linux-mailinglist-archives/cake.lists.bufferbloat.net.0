Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0254722C98A
	for <lists+cake@lfdr.de>; Fri, 24 Jul 2020 17:56:55 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id A6CB73CB38;
	Fri, 24 Jul 2020 11:56:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1595606213;
	bh=YwfLeMHwDQnaluAm27XGnOInU23rQOTGsoK7nqhVjtM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=WBdTdxIp1wa/KJEr2Nj1TA8BQbyttrGbuuuD0r8zetcE/VCrQWWREsKuId0zwhrku
	 bl2X3DUSsp0c9ysbkLgInadj4plR1yxrJZzzoYenTuFbiVh4CTWhEbh+aAmbD5eTdx
	 Z2jqJGNnLZfh5GUM2p0hVEHsb0ztjXDePyHfpogbohD9791DivQ5Jk/oFJfmnpsQ+A
	 FLnhcsv41TKKAR3yYh07OoqdvN4k4gBsS0JkWv1ro8AEAlvgyDvjxxN6rDmdIsMfWh
	 UNXgGNsuBhoFXJn6MxmBscip1i4GNLPxShytQ4SaYLM6eGXvEn1qHT+OjQ6gJZRYJP
	 yypeZocB9nX2A==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com
 [64.147.123.19])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 8E7173B2A4
 for <cake@lists.bufferbloat.net>; Fri, 24 Jul 2020 11:56:51 -0400 (EDT)
Received: from compute7.internal (compute7.nyi.internal [10.202.2.47])
 by mailout.west.internal (Postfix) with ESMTP id 0C538D25
 for <cake@lists.bufferbloat.net>; Fri, 24 Jul 2020 11:56:49 -0400 (EDT)
Received: from imap9 ([10.202.2.59])
 by compute7.internal (MEProxy); Fri, 24 Jul 2020 11:56:50 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=althea.net; h=
 mime-version:message-id:date:from:to:subject:content-type; s=
 fm1; bh=VrFBMAkqqriPeSiIHK+iiq3S1jY0YoSs8/wdTMgtPb4=; b=t+ROj6lI
 06NRTJOPECMa2VkJUL/s6iZFkJM7NbS58oLAsiYR5XJO7QCa9UGaRPJhp6GlDuG2
 xU5jAINYVhNNhO0N27bFoUtjE6HxVMhwL1W9b4IhNEC7RZRsPApYs0bpgLOzBMIY
 /guDgfOiStdFXc9uBWM6vbDnakQUC+u3rRBM+9puBb6wVBm+pZFRH0pm4lsDjcOf
 3/7tRZ7hGBCe+15D/+qqfb1x6Ow3Xf64vSKLLFM+GerBvseI6bYwfeEFhXCX+iFS
 2WNg9j7VNd/SUX0Ki5iCkYbJ527mN3gQqoJycWwcc+k2IE6+AbejwTv6RPxb2+bU
 7WgZUl/WCgdJHA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:message-id
 :mime-version:subject:to:x-me-proxy:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm3; bh=VrFBMAkqqriPeSiIHK+iiq3S1jY0Y
 oSs8/wdTMgtPb4=; b=GVkmfuakmDMNksb9N34QFJ85sICUdPJVHdcI/GJF+47Hi
 qUYwxy3cDGJpIWZo/fR3afifWiTIaLgFT8fJ57ZHsLV66VJMATiFu1ySY2e9D2Y5
 Llqpg1/W0UkBgb8Agzd+92zW3lB7SZb1K+HVAh7ZMHvUF88Nby7tCfNa8Ue54tcB
 2/TsAkPryglwhFmJZquVsqkJTWEron7VaVisKq+qaOELl8ZHEZd/IZ1/x9a3jDZv
 VBt1FSpLudwR41yYcuzZ1pLDik7Bbx0Mxe5n6bau17hEIS0KlZSpPJMD/4SeGC9+
 M4olPSgwWI7YGpuM44kTpiwkhC6nTXuRQISJtXzlA==
X-ME-Sender: <xms:wQQbX7z0OPmZJ3WSiqWryOk4F_jwoIleASHf4eJzsUhub6v6VSL6rA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduiedrheefgdeljecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhepofgfggfkfffhvffutgesthdtredtre
 ertdenucfhrhhomhepfdfluhhsthhinhcumfhilhhprghtrhhitghkfdcuoehjuhhsthhi
 nhesrghlthhhvggrrdhnvghtqeenucggtffrrghtthgvrhhnpedthfeujefhledvueette
 elgeduteehuedtkefgudeuveekteelvdegieetteekjeenucevlhhushhtvghrufhiiigv
 pedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehjuhhsthhinhesrghlthhhvggrrdhnvg
 ht
X-ME-Proxy: <xmx:wQQbXzQ4ZzbOAy00m2AVjLV-p9tZlBv0smnfj3J6jM9YMx7QdnOIaA>
 <xmx:wQQbX1X-wcWyH4mD_x18AHgSoAz8OK33_Y4u_4qSXEihGNcRRfhzPA>
 <xmx:wQQbX1gUWe_gLwKF9iDlFfIsy5lZ0CRivsxNA6xXUdUGeTT50JXLng>
 <xmx:wQQbX5ysw2VmAPPjiOrRc-5sUhNYBMZf8CYuhtWSzyrHJFq04lD6Gg>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 4A07A1C07D7; Fri, 24 Jul 2020 11:56:49 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.3.0-92-g11c785d-fm-20200721.004-g11c785d5
Mime-Version: 1.0
Message-Id: <d5f74f85-7d72-40f9-a965-8335163d8cec@www.fastmail.com>
Date: Fri, 24 Jul 2020 11:56:28 -0400
From: "Justin Kilpatrick" <justin@althea.net>
To: cake@lists.bufferbloat.net
Subject: [Cake] diffserv3 vs diffserv4
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

InNxbS1zY3JpcHRzIHVzZWQgMyB0aWVycyBvZiBwcmlvcml0eSBwcmV0dHkgc3VjY2Vzc2Z1bGx5
IGFzIGRvZXMgZnJlZS5mci4gLSBkZS1wcmlvcml0aXphdGlvbiBzZWVtcyBhIGdvb2QgaWRlYSwg
cHJpb3JpdGl6YXRpb24gbm90IHNvIG11Y2guIgoKVGhpcyBpcyB0aGUgYmVzdCBjb21tZW50IG9u
IHdoeSBkaWZmc2VydjMgaXMgdGhlIGRlZmF1bHQgdGhhdCBJIGNvdWxkIGZpbmQgb24gYnVmZmVy
YmxvYXQubmV0LiBJJ20gaW50ZXJlc3RlZCBpbiBoZWFyaW5nIGFib3V0IHdoYXQgZGF0YSAoYW5l
Y2RvdGVzIHdlbGNvbWUpIGxlYWQgdG8gdGhpcyBjb25jbHVzaW9uLgoKLS0gCiAgSnVzdGluIEtp
bHBhdHJpY2sKICBqdXN0aW5AYWx0aGVhLm5ldApfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJs
b2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
