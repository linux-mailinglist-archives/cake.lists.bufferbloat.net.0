Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A63F12F1CF
	for <lists+cake@lfdr.de>; Fri,  3 Jan 2020 00:34:06 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id EC9AF3CB38;
	Thu,  2 Jan 2020 18:34:04 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1578008044;
	bh=Fp4gNdWkdBrDE3JoLJMQLGmg8JZ0ZDMxqQTuHL8KWmw=;
	h=To:In-Reply-To:References:List-Id:List-Post:From:Cc:
	 List-Subscribe:List-Unsubscribe:List-Archive:Reply-To:List-Help:
	 Subject:From;
	b=OqLCdt39PG6CgWh1gWpvH2+cdP5isDpqgBRCamOoGwtD7go5O+GFMsaoMN1T75HZb
	 fUtT1TrnkYQZcUc0YtWHnThc+qV/xtENogTeZEm3rdIqDjCnC64yzcpLRvHlW8wmMO
	 qi2p9Ub5ySpMc1rYnZGsdnbW3p+/1jIAzcAAF1L7ASMvN2xp+mlVOCechvieOBUnt8
	 tl88kPCBy6ELYUteRRVfdxTXQkvbyUAZHfDT6MS0fMLFZyYQAdhac58078+0tMhixa
	 uC12xCl7/ewsiMCXWYT3D0hrOf01Pj8xZ6I2pTKZ8Gpi/mQmkdSfmPRUX8f6HM2JhI
	 T6r+3dLErJKRg==
To: Wen Yang <wenyang@linux.alibaba.com>
In-Reply-To: <20200102092143.8971-1-wenyang@linux.alibaba.com>
References: <20200102092143.8971-1-wenyang@linux.alibaba.com>
MIME-Version: 1.0
Message-ID: <mailman.304.1578008044.1241.cake@lists.bufferbloat.net>
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= via Cake
 <cake@lists.bufferbloat.net>
Precedence: list
Cc: Wen Yang <wenyang@linux.alibaba.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, cake@lists.bufferbloat.net,
 Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>,
 Cong Wang <xiyou.wangcong@gmail.com>, "David S . Miller" <davem@davemloft.net>
X-Mailman-Version: 2.1.20
X-BeenThere: cake@lists.bufferbloat.net
List-Subscribe: <https://lists.bufferbloat.net/listinfo/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=subscribe>
List-Unsubscribe: <https://lists.bufferbloat.net/options/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=unsubscribe>
List-Archive: <https://lists.bufferbloat.net/pipermail/cake>
Reply-To: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
Subject: Re: [Cake] [PATCH] sch_cake: avoid possible divide by zero in
	cake_enqueue()
Content-Type: multipart/mixed; boundary="===============6642611044656275042=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============6642611044656275042==
Content-Type: message/rfc822
Content-Disposition: inline

Return-Path: <toke@toke.dk>
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	(using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by lists.bufferbloat.net (Postfix) with ESMTPS id 53B8F3B29E
	for <cake@lists.bufferbloat.net>; Thu,  2 Jan 2020 18:34:04 -0500 (EST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
	t=1578008042; bh=n+/Z2y8RBVuqOI4GbqxFKUrx0mw1L0vQ5v5oMAmp7p4=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=LoYd6qXDE5xAkgF2bwCD0T2jgTeox5j6DXM1M6YwSyyiIgC4s339InEiSQ+Ii9jEw
	 E/03m4wW582/wfubbb5xghNEIY440TWkImjxPtKQrS6bPV43ssXEJz79HyoCtFA0WK
	 jlfLzgl6Z20tN8ZdeNSgcyZ1/x6xf7f3uIaaVXk3NEZusaBYY0md3LnksEl/c9zV70
	 i/XJP7w99sQRz/7o9Yh13kZtpl3ESq50+BRdyRlwZ71fN7M7Lk0O8hfCnNSWVjXgxm
	 47uMNKSNCrYZujafjMO1cDRwfakGV3N9FBOiYwzlyQDfk4vxrFT8wJb2goOueaRRPk
	 /3EEhSnY9xDCg==
To: Wen Yang <wenyang@linux.alibaba.com>
Cc: Wen Yang <wenyang@linux.alibaba.com>, Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>, "David S . Miller" <davem@davemloft.net>, Cong Wang <xiyou.wangcong@gmail.com>, cake@lists.bufferbloat.net, netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] sch_cake: avoid possible divide by zero in cake_enqueue()
In-Reply-To: <20200102092143.8971-1-wenyang@linux.alibaba.com>
References: <20200102092143.8971-1-wenyang@linux.alibaba.com>
Date: Fri, 03 Jan 2020 00:34:01 +0100
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87ftgxl9g6.fsf@toke.dk>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Wen Yang <wenyang@linux.alibaba.com> writes:

> The variables 'window_interval' is u64 and do_div()
> truncates it to 32 bits, which means it can test
> non-zero and be truncated to zero for division.
> The unit of window_interval is nanoseconds,
> so its lower 32-bit is relatively easy to exceed.
> Fix this issue by using div64_u64() instead.
>
> Fixes: 7298de9cd725 ("sch_cake: Add ingress mode")
> Signed-off-by: Wen Yang <wenyang@linux.alibaba.com>
> Cc: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
> Cc: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
> Cc: David S. Miller <davem@davemloft.net>
> Cc: Cong Wang <xiyou.wangcong@gmail.com>
> Cc: cake@lists.bufferbloat.net
> Cc: netdev@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org

Acked-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@toke.dk>

--===============6642611044656275042==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============6642611044656275042==--
