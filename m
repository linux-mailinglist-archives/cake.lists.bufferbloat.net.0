Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A3A845C81E
	for <lists+cake@lfdr.de>; Wed, 24 Nov 2021 15:57:43 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id DA06A3CB38;
	Wed, 24 Nov 2021 09:57:41 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1637765861;
	bh=m0npqQFTlP4+Q5BZaYRXtGYvAJ8mhxL9C75hrMl6I6w=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=UU0GZyGvJ8XNGVqa/oebM9z2eWpDfUaqae9S8wr5uIhUcJoWpIKah3a8fWxReEi3K
	 Jbgd+mZU1q83AxGjx3zlCaaNTZk0MY21JttUFpVir7vnmoevbsZ8m3T0zC1Gx/xWmd
	 ipDhFweHkdbDa20j5a5KVa63ptzcad9CNcFRIpl2tLfO7zcKvlndE66eV89wTlLccN
	 Lr8DRvpLPTNvwGbrJQ1q+7oLB461fReeLgtielJFTz7o8zEVwEm4HyWGNwgyzJG4Oq
	 v5trikWBsJ2SMzlBCPueXfMyCILf3ZsnZUmVyAbBP2QDOo661zfXNLAqNgY/4arPdT
	 1LLJj27Dp1kEg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd35.google.com (mail-io1-xd35.google.com
 [IPv6:2607:f8b0:4864:20::d35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 5B0B53B29E
 for <cake@lists.bufferbloat.net>; Wed, 24 Nov 2021 09:57:40 -0500 (EST)
Received: by mail-io1-xd35.google.com with SMTP id y16so3532827ioc.8
 for <cake@lists.bufferbloat.net>; Wed, 24 Nov 2021 06:57:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=HMmAyzePz1XQHoh8/Ojk3exdwEZu+8CsG+a447z2os0=;
 b=iF4k8lddzVC2F2p0c0S64baNqfNP4h1LVcZJOD9BfSG7xyjcZ/QVr+CzJ6UhFMdIIr
 cvR0bsv5a6TVNr9ReoaBBYyiJ/hvlxR3vwicxxMk91FQNmx1Ab98WLGrqx8NFVlXfNiU
 zZBZhyQHYrVQREmGqJOp9Xpdy4acXvtwbjy2ICl78xGAcJFBC2QCOFNrqjmG96g4O1Gy
 N66VzE/DpE8uJ/qKUHUhSXI6fKbz2zqP8Bhn0K14eoVhEWv8t6PfMPdnq6KGXJszpglU
 2Rv1D79WXQ0Oy3OJY4pAVLEBpoz8su1QWthfj74BVbzU8o6z0NH+HAHCkm+OyHBVb7tW
 aTMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=HMmAyzePz1XQHoh8/Ojk3exdwEZu+8CsG+a447z2os0=;
 b=o+AxvpMUflfETzt/P/XFMDxRNytiYq5XBkOCjYyRY9x0BNQAYgxrbyYybmTNi3E514
 nD96tDmKb/D2FgLDjOqqwRTty8IBc7xp7AG2LFoKtnlDbDEJLOOupuAT8zWRXqJuxVlC
 fhnRvpiiVMdanreXDJpm5gYKrmSszBfich6UJdVtwJkcSmlYyv9HjZuFp+1Iub9pNsGo
 uVT/RsDFYYYLxtlUjtXfeEqKnaA0Dwdl3GVE6UCtewKjbq7P2ZgQRC+/XfgFoaQJvszF
 GBgoDLFaBOjh2zpEO3LpeYs7dfMdTfILNEG2e3AVXoAH3Fj9DDnzNQDIxnW0Nrns+MsB
 iVMg==
X-Gm-Message-State: AOAM533e48lgIVtXPH03SIGwBswzRhM779bW0ytxMAqu2OKW/TK8SZfq
 mmBdvyp+/y5B281zBBVFXmUpZAvfxSrK9s4Vv0xQCeDYAGE=
X-Google-Smtp-Source: ABdhPJy+UgWQ9JGaL46NPjv+FioUezs1BuQ0XFE8OHVzvX1uzBD9FSuK3HfyKZLDgx0oja4WkUg6oiiUZdh9hsRsqHM=
X-Received: by 2002:a05:6602:2e81:: with SMTP id
 m1mr14620175iow.55.1637765859548; 
 Wed, 24 Nov 2021 06:57:39 -0800 (PST)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Wed, 24 Nov 2021 06:57:26 -0800
Message-ID: <CAA93jw7yxLUjZ-k8GE3P9JAS36v_6b7K+mNCe_dGdtyswLXrpg@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] cake in merlin
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

aHR0cHM6Ly93d3cuc25iZm9ydW1zLmNvbS90aHJlYWRzL2Nha2Vxb3MtbWVybGluLjY0ODAwLwoK
LS0gCkkgdHJpZWQgdG8gYnVpbGQgYSBiZXR0ZXIgZnV0dXJlLCBhIGZldyB0aW1lczoKaHR0cHM6
Ly93YXlmb3J3YXJkLmFyY2hpdmUub3JnLz9zaXRlPWh0dHBzJTNBJTJGJTJGd3d3LmljZWkub3Jn
CgpEYXZlIFTDpGh0IENFTywgVGVrTGlicmUsIExMQwpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZl
cmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
