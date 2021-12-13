Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F93C4730B8
	for <lists+cake@lfdr.de>; Mon, 13 Dec 2021 16:42:43 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id DFF8D3CB39;
	Mon, 13 Dec 2021 10:42:41 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1639410161;
	bh=3FwOrQQi5mjq3oTDIjuP57+nGpuX0/Da31pS92EpeQU=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=J2Z2RKNBByvKy/t1p/Zxe0bu4IjD2q20Y13XcuIWejG52QNVlXXJB8a1FqBsnGgLQ
	 RdRfbk66M+KDYIB+EA62SDgo4rV2mnN3f5f4pLkaastdKoPaGGHF5P2sMwSL+1soaW
	 NLWDE/4TBsh9WmIizH2zB2zJl3UJABBEUqk3uDAE2bATkllX5jX1VY8SOEuz3o5k1G
	 hGEsmDeWcqXtBooe2XmL/E4OwKPOktXAzuhqEyqhJbVewRjIP7Xvm4JESm3wILvGW7
	 Y9kloIvOI7jVYo3+3qsqHzVaVq46Xvzj2ED1UrYpnjrZzQh5b1kM9A4WIUMIHdPcTm
	 7TR69NXbrvQbw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x135.google.com (mail-il1-x135.google.com
 [IPv6:2607:f8b0:4864:20::135])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id D09793B29E
 for <cake@lists.bufferbloat.net>; Mon, 13 Dec 2021 10:42:40 -0500 (EST)
Received: by mail-il1-x135.google.com with SMTP id t1so2520507ils.11
 for <cake@lists.bufferbloat.net>; Mon, 13 Dec 2021 07:42:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=c1Lgk9fsHn+rgM3FlWHynLVOLDu7dKqW38ZNnShfJTI=;
 b=fc2AJ/oDFNtfqwI/8DQxTShXr4lTi1S6+CiUu22yKj0JnI+yp9/8jK/UCiYFjQ8aQN
 e1WMg9oTGEL9TE1r/IvYhYq/2hNQryqqD4Nzr99huwFHm+22JmtjceOxtIqAj09lxaMy
 8qGD8wKuUthGqRZsCj64HbSja6aGlK8mubXAWky734aNKJbKgRnS18Baf5WPzZdSaTXm
 +ekorRg9LW/0jUoiioeMcw8CMibqGSeZlzrlpgXbbqYT0fluWGlO3cO3GFWVVFMNh6VZ
 8Myj5g1IUZsAO/5sQZDRPgUi3uTq/ZQWPxUOCG41TWU4bwi56vU4qs9kJfFfkHW9eFrI
 1uFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=c1Lgk9fsHn+rgM3FlWHynLVOLDu7dKqW38ZNnShfJTI=;
 b=sjffSeuwzdwYc9TrhBnK3sHckzz0SJ5V7NNkhHzsdbGQ8B2xYtbbY06v12HEqNloV0
 NHU5s0VFt51HFnyKFT3qwTbkIh7Lr9KynKrsw03htkwC9yl9amclpujZ27qBBsmsdtj8
 rr4ntdXdnzwocBnejheIdGAid2UQyQqJDjSkbOaCBdwSt3E1MXFoWkLvzqxsk48a+3FT
 nOJD/jrr8KC/nWJvdwJikGRr2q6pzsUklMjVoMEb5lY76h9X3ZTTL2gU0WMNZfBH9J/C
 /tam8iiowJtpXVJoFzDdKuiaNTVTm6XqGfX96ALqIH7PBZMA7ym8+clKeubmhUidNEqb
 LEyQ==
X-Gm-Message-State: AOAM530yLRWRDiZeWipCuHfdqvD8kTknuKin0dnsVHjhTlY4zsHYSZGe
 TZtykWaQts4Ul5v5F36kMVWpGIKeXYQbZ0zvONVDIdjTbzs=
X-Google-Smtp-Source: ABdhPJw1QruQSEf8R6G0EZ/dHM8JPJ6jSImpZ8BUYlbXtkYOaV4R62youcpRX7oosKQprRp7Q6k7k33oNc37nOVTZBc=
X-Received: by 2002:a05:6e02:b45:: with SMTP id
 f5mr30890234ilu.283.1639410160048; 
 Mon, 13 Dec 2021 07:42:40 -0800 (PST)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Mon, 13 Dec 2021 07:42:27 -0800
Message-ID: <CAA93jw4HeUJXskAbxaS8=t1eSJZ+nASFAst_eeN-xFp1i++4SQ@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] arl qdisc looks clever
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

aHR0cHM6Ly9jaHJvbWl1bS5nb29nbGVzb3VyY2UuY29tL2Nocm9taXVtb3MvdGhpcmRfcGFydHkv
a2VybmVsLysvcmVmcy9oZWFkcy9zdGFiaWxpemUtcXVpY2tmaXgtMTMzMTAuNzYuQi1jaHJvbWVv
cy00LjE0LWd3L25ldC9zY2hlZC9zY2hfYXJsLmMKCi0tIApJIHRyaWVkIHRvIGJ1aWxkIGEgYmV0
dGVyIGZ1dHVyZSwgYSBmZXcgdGltZXM6Cmh0dHBzOi8vd2F5Zm9yd2FyZC5hcmNoaXZlLm9yZy8/
c2l0ZT1odHRwcyUzQSUyRiUyRnd3dy5pY2VpLm9yZwoKRGF2ZSBUw6RodCBDRU8sIFRla0xpYnJl
LCBMTEMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2Fr
ZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5i
dWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
