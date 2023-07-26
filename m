Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id B6D24762B72
	for <lists+cake@lfdr.de>; Wed, 26 Jul 2023 08:31:36 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id C92CD3CB40;
	Wed, 26 Jul 2023 02:31:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1690353095;
	bh=k3vx29Y3fgRqAcx0ZWtf+Smkf3WDCc4lutab/t6DFkY=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=Fi+JfQqxZMQf16kHwmRz9+qhbVNXFAbBP6ntKIvLHKQRcByQEYZzgC7609od9/5lk
	 C164tR9E5OD2erKjtTZVLx5SX6ZZa2Ua6iLNlnGwoqd6JcRtzWkSBfP3LF3ZovkmFV
	 e8r6G5rhd0c7/OYAyFLS6xxouNBDLAuxc88ihsHQuMALDu3LVP5KxigeOrEBH69WIT
	 g3/852MEKjGoKtL7cewrBw4POy8I6pcRJ6Lr2LC/6PWwRGtr00/DAFne94+G5/95OB
	 7R8G4S2rkB1pYL5AB+p2QSWDHqRqtPMkBhuEIU8zWDJFwWii0l0lKx/9I4wIm6cNfG
	 vpTpqdCVxa1nw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com
 [IPv6:2607:f8b0:4864:20::62b])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 565A83B29E
 for <cake@lists.bufferbloat.net>; Wed, 26 Jul 2023 02:31:35 -0400 (EDT)
Received: by mail-pl1-x62b.google.com with SMTP id
 d9443c01a7336-1bba54f7eefso4103335ad.1
 for <cake@lists.bufferbloat.net>; Tue, 25 Jul 2023 23:31:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1690353094; x=1690957894;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=UulkVffboiOHRfBHjpJOXvIeW2uXEsAcYB0ToCnC09s=;
 b=G6uawZ+v13rwb4WFPNm6cM8Noz1iw/wJDHEtaNAJ/qMXBN+C40AN5o2pvilQY2qKHt
 wF2sTVxubqZ9r0vnqdovPNTh5cvVheU5qPzM4piVC2WxNHOLsYbzWUKAVl9Tlh4h7vU0
 RPwjtuSY96vLDxN+pfVrCN/KZF40ExKTqN3DLo+oH9GgMecttfTTXbx9jmOkstUnuVG9
 Jty34Aj2ES4wG+Noy9+bbaWXomYYf6MOY2vZF4+jlQCcKpHuT9jnbzX9OEVKcb+tZ9Om
 zhx/F6NWR4YojAbbDngcqVagg8X9YF3X6+POuVN89RF07X/d363apoOhKqHTNM1H+A5B
 aM6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690353094; x=1690957894;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=UulkVffboiOHRfBHjpJOXvIeW2uXEsAcYB0ToCnC09s=;
 b=ZWD17E7+Ked6xYbtKCqybLk+2ge+EMeT1I11cdS/m50KFtJd6urR3TjxLdRnhkTwRB
 T3l9QAUNPs0r6V1M3plXw22EC223Gn2X6VM0Ci6Iv4JYP7iAb7oLAOvItA45jfkXz/gB
 lJTl36GzXEnAIZBuizwJ7wwG3SVrtF4bGBdUC2v+NS/e6ruPw83sGlJ5Knv7Ay2TpvKA
 QXwMDTBgxuEDRGH0+uJPCofTC6osH/Z/MZsdvqAU45sTmcYmORprMWMw7KIFXRm1ep7c
 vmbi8Hwhmu2wIB1OtD256C/2SAJRUq7wUht+ZbryfPTizpTkYIPXk5rIY+lfndjxkvKR
 /Glw==
X-Gm-Message-State: ABy/qLZLDWU4sPQyflCQl4j6zFKIrDaxDogQ0LlhRSGo+Z/0npTqEZdo
 U8J0xgcuT+T1t+7YG/0gQn3ZTaaA47EXoaLX24yb1JgJ
X-Google-Smtp-Source: APBJJlGQTMP/rTijXTDdL+S8wzrZnqGDHd3Pv7yKBdStSHXZT8YXoKCRqV1Eu5hRcdyh2j3Y5XS5vtRU9NtYKmdenp0=
X-Received: by 2002:a17:902:e743:b0:1b9:d335:1b7d with SMTP id
 p3-20020a170902e74300b001b9d3351b7dmr1826497plf.6.1690353093809; Tue, 25 Jul
 2023 23:31:33 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 25 Jul 2023 23:31:22 -0700
Message-ID: <CAA93jw6xCyrzQSMD+ciZxRe42z9EOdwHc1a4zWQLMQh1n+wAqw@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] mqcake
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
From: Dave Taht via Cake <cake@lists.bufferbloat.net>
Reply-To: Dave Taht <dave.taht@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SSBoYXZlbid0IHRob3VnaHQgYWJvdXQgaXQgbXVjaCBmb3IgbWFueSB5ZWFycywgYnV0IGluIG9y
ZGVyIHRvIGVuZ2FnZQp0aGUgc2hhcGVyLAphIG1lbW9yeSBhcmVhIGNvdWxkIGJlIHBhc3NlZCBk
b3duIHRvIHN1YmNha2UgcWRpc2NzLCBhcyBhIGhpZGRlbgpxZGlzYyBwYXJhbWV0ZXIsIHdoaWNo
IHdvdWxkIGFsc28ga2VlcCBhIGZldyBvdGhlciBwYXJhbWV0ZXJzIGluIHRoYXQKYXJlYS4gQSBO
VUxMIHdvdWxkIG1lYW4gaXQgaXMgYSB0b3AgbGV2ZWwgcWRpc2MuCgpEaWQgdGhlIGxvY2tsZXNz
IGZpZm8gcHJvamVjdCBldmVyIHN1Y2NlZWQ/CgotLQpQb2RjYXN0OiBodHRwczovL3d3dy5saW5r
ZWRpbi5jb20vZmVlZC91cGRhdGUvdXJuOmxpOmFjdGl2aXR5OjcwNTg3OTM5MTAyMjcxMTE5Mzcv
CkRhdmUgVMOkaHQgQ1NPLCBMaWJyZVFvcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0
Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
