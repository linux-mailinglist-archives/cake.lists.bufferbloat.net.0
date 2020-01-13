Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C898139BC6
	for <lists+cake@lfdr.de>; Mon, 13 Jan 2020 22:42:00 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 75B713CB38;
	Mon, 13 Jan 2020 16:41:58 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1578951718;
	bh=wRGOA2jjVfmixQrqlaTCoblq/8gO7+a+4FKWEWdwx7k=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=TTgAZleR8F+glmz1jLqnGnhWh0swmJoQw1GN076TTfscoby6JqDl1BwfeVWH5tSFO
	 vi9LD0Q6KSlQ9aMnQDaN9fSAHaKUdeTUsZ+rHi+kvcpbM7vysZ+mBoKLUXlgNaq70M
	 bOBheAq9ciAmQpOzJ7Rd3WTkDJa161KUGg81KcnXx6WWm0KklLq1N1jxsBOzt4BvcY
	 +ouz+hclAa+2rzf6U6716QJNQQaWyrpoPXzqkpRmXG6cWcC9IM5qiMMBdfiGL0DLHw
	 suFwEQ7C9bSkbSHLwueMWjp4VUXfm0lhAI/J7YJRKpTUWFP4h4p5oFXAJDG5sbrU8c
	 MIGAhVCL22s7A==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x129.google.com (mail-il1-x129.google.com
 [IPv6:2607:f8b0:4864:20::129])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id EA7543B2A4;
 Mon, 13 Jan 2020 16:41:56 -0500 (EST)
Received: by mail-il1-x129.google.com with SMTP id x5so9528828ila.6;
 Mon, 13 Jan 2020 13:41:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=APtnYpohjoWyJRdCoj9NmQfQciK82X0sisYt0VUamqQ=;
 b=vLaFbbfeki/TaX5O4UzJ0sziJ0CxBxAw0DZzBxJVEjttKkcgcYmgGvBsbbCz/vdzbX
 9EzSaI/qEceRiEYQKf/Pkt+ltJ+HnvuZV7yqYfNJnqygKDIEwYLPKfF2eEyoiKdBSB1g
 PSoraxIqz6ivPOwNvJQoxwIIBvrGW1b0HprPmFCKbJiaiG+b/E2322ecHGcjFzN6IT9W
 aV0XU+jgSw+7aiIEcxXjJ3p91IAr27uVtJ08t4pfD1xfEdd32KC+J/73Z3cw2lf2XbNU
 GY0TdBE/hM3UYiUazj472aNNQPeMqU72Sxc4jqSgalLvg3caqDwi+B0iW1glE5SReALE
 iR5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=APtnYpohjoWyJRdCoj9NmQfQciK82X0sisYt0VUamqQ=;
 b=hj4PgUXVPlAerfkaLViYMIi3pi+WzTSYBbVXbZ4upnuYyJR9q8V55OqM5yfdgJdU62
 xWi2PVncZDZPjqs9ZE8Jfy3Y6XwGstGPHAlI3Dxyj44H1geOXLafQn0mo8Ao5QaF+g71
 /PrpzxHbz0Ll9x/VS2c15B8HNzj7nTAAuLBDXtOta6P82BUOlGCPo9kJXQ6tGp5FwG7M
 7kCwmvE79RgYhu9S4sRsNn3RICZdjpmNRXOQM6lHNseTEjIeIB4GI+aedzA4M/Hw2nes
 w9qw+nQgyPKsYf+vh/Bc5L74REceWEtmSYPmmqqtQd3+Ma9hvAIGrFOsPMMSYOujtLFM
 fm+w==
X-Gm-Message-State: APjAAAXRMoHL73x8MtF4x42V2Z5AFBkFZzbV2/N2xLONfa1qj9rxolx8
 +ePW93/yZT5fvROhcSI/czrg3SNRf3H4IjNJNMDN+1hH8WQLzg==
X-Google-Smtp-Source: APXvYqxO9F8a01HaSRWyWAz0V84cD4tdogegOGm5UZdkIpeLPZ2pfxzocwkR9+uCErOciltHusOwsOu9eM5qQ+j/Nb8=
X-Received: by 2002:a92:3a95:: with SMTP id i21mr456482ilf.249.1578951716167; 
 Mon, 13 Jan 2020 13:41:56 -0800 (PST)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Mon, 13 Jan 2020 13:41:45 -0800
Message-ID: <CAA93jw5E3NQJwFa47VCXtG96JqEsdXBty2btZQpfaXDnCJpjKQ@mail.gmail.com>
To: codel@lists.bufferbloat.net, Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] Codel + Choke
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

Q1dDOiBTaW1wbGUgYW5kIFN0YXRlbGVzcyBBUU0gQ2FwYWJsZSBvZiBIYW5kbGluZyBIaWdoIFBy
aW9yaXR5IFRoaW4KRmxvd3MgdG8gUHJldmVudCBCdWZmZXJibG9hdAoKaHR0cHM6Ly9zY2ktaHVi
LnR3L2h0dHBzOi8vaWVlZXhwbG9yZS5pZWVlLm9yZy9kb2N1bWVudC84OTUxNzQ3CgotLSAKTWFr
ZSBNdXNpYywgTm90IFdhcgoKRGF2ZSBUw6RodApDVE8sIFRla0xpYnJlLCBMTEMKaHR0cDovL3d3
dy50ZWtsaWJyZS5jb20KVGVsOiAxLTgzMS00MzUtMDcyOQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1
ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtl
Cg==
