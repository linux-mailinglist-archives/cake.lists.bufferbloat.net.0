Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B4FE57D379
	for <lists+cake@lfdr.de>; Thu, 21 Jul 2022 20:40:59 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id AF47A3CB38;
	Thu, 21 Jul 2022 14:40:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1658428856;
	bh=hzK3SDYqFQk9ZPvOdonIT/QjeuQ5y7K76L3TU6yx4gU=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=ZbGgEN1hIc9mE4RKQLTTTPoG4tbYeIMIGi2HjAMEiWKmkRwqIJ6lCadW3VuNgCBea
	 ALFd7T1XGuLvAOcZao7mE9wbneWuhmTgZnoAjSbnOUShxbIQk0XRuNoAwaTCuXzUub
	 747ktXuLg7uOrkrNellPDsFOneSiMBntA29Usc6TiRcrcm3ab/kRz12xEo0blRHIdn
	 fyjerDL8Ze9/V+M9TqU0kVU5IGcb4AdrzUkr7TQS/XY0bbTOi8UFK35/wnP7mkL7Qt
	 pkRnA109KDIdhjPdTr4IZceHXbGgFtoCZHX0O3ECSL/8x0zFeootlWLbKBQBPJI+1g
	 6vhrTNtAIHCKg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com
 [IPv6:2a00:1450:4864:20::430])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 9B5B13B2A4
 for <cake@lists.bufferbloat.net>; Thu, 21 Jul 2022 14:40:54 -0400 (EDT)
Received: by mail-wr1-x430.google.com with SMTP id m17so3209750wrw.7
 for <cake@lists.bufferbloat.net>; Thu, 21 Jul 2022 11:40:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=QNXHN57nCLYm6mU0119KE9ZHtZdT7YJti3EHIW+Y9n0=;
 b=pc88UvMqWbrIy1EZzi9o13kYkg4M92pFWoAD3WjQi1jU0Ok7v179cHAbCjdNVprWzl
 HySuREZKrjQR30/apc3LQ1dNg+s+mzrXfM34+2HbN/VYOYyRwyWuuRTDEW1SLkFiglqm
 7+K9I3cGzUe1reslLXG53rGTU3nKgauqxRFjhDpDfR1cMW2x93EViHYzb/DpIYKABhiS
 X+CRW3nFXKRZafGZ/h9X5Qkhyaj/leKxxcTS8WYTVctX3rJCpU2BgjTY+ZlMuklKYzUz
 voCwznW6+zxNHOu/BvE4vWXXMvZDeFtpSDuROTDvB10HLnNbIdC+bXrC9j/leLYxse7C
 kuBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=QNXHN57nCLYm6mU0119KE9ZHtZdT7YJti3EHIW+Y9n0=;
 b=TamRk0V11N1wSbcMYblYgliTZb72bMlVZhWknUp4YD74QP4LO1pzQHlduZTIw+u3g/
 DA4c06Of8ltkci4azu2flT+mTwntwU+awuHcTHVhuNpnl+Rq+8/omU8DlYdv/rWCLrFm
 fSZCxBalsLP1/mvqDtBbCMqwF4bBglrRfP2WLMU0UHTcgL0JZLZgiXVIKCPKEYoCQDYa
 BFxc6bn/NNwx/TMdW5A+mxYZCyoaI6i3uJ8uLaJVhBz23Q58gbTAkkqzlOf3VwGP94PB
 oQ27FxaXiwrqpSmYFY4irn1nYrSRuoOGF65bqwwfaz7KToqnTttvdKiN4pOyn/Df3rjw
 E6yQ==
X-Gm-Message-State: AJIora/tk4tg2HInkPERoctvdYrMHjumKbph4DHeN+cCpr6TJgQnpt1p
 dqPEqEZaNXjIh1WjfuPiCXrv7Q53O3z1HHLlZ9LmdXpsJuBh6Q==
X-Google-Smtp-Source: AGRyM1vkK2yhlGV0qTBGiOey1UqX8gqvXnQmXgEmJa436NLjhx79+72AR6RBTEoiL48JJ/v+LJk0KvGztkOIXz0OM+Q=
X-Received: by 2002:a05:6000:2a9:b0:21e:3ac9:a9c5 with SMTP id
 l9-20020a05600002a900b0021e3ac9a9c5mr11053816wry.566.1658428853378; Thu, 21
 Jul 2022 11:40:53 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 21 Jul 2022 11:40:39 -0700
Message-ID: <CAA93jw6EiZY6MZN421dUW2=0SG5Q_c=3EzKeWJsKtEAEjuP=VQ@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] pcq on mikrotik
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

YXQgc29tZSBwb2ludCBJJ2QgbGlrZSB0byBjb21wYXJlIGNha2UgdnM6CgpodHRwczovL3dpa2ku
bWlrcm90aWsuY29tL3dpa2kvTWFudWFsOlF1ZXVlc18tX1BDUQoKLS0gCkZRIFdvcmxkIERvbWlu
YXRpb24gcGVuZGluZzogaHR0cHM6Ly9ibG9nLmNlcm93cnQub3JnL3Bvc3Qvc3RhdGVfb2ZfZnFf
Y29kZWwvCkRhdmUgVMOkaHQgQ0VPLCBUZWtMaWJyZSwgTExDCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMu
YnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nh
a2UK
