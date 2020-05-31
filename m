Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D3A31E9941
	for <lists+cake@lfdr.de>; Sun, 31 May 2020 19:27:03 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 4F2DB3CB38;
	Sun, 31 May 2020 13:27:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1590946022;
	bh=RdQOzixcmMyZtE+eqZmCLnHDLWNFibachDNdkMD8dAY=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ktsu9du91e9akAS2EZ8JnuBzV9pGjgHWHsHADW0ajda1djX7dxklf/K+M5VnDNgb0
	 WaKjQ5HXSL9efsmOHEDHPB5hJ3Mk16/plwsgpCtWiEoiUlCimWoruyNqhb9uEe3Up8
	 +p0cYPNbLMLHRJR9NalVzSolCHBcw5kY/y/5x2Wfuap/h7iP7R21n8d1cEG1jaFRnG
	 w2uj784YrWrGwA0MHC+hPofKImBMpWUXgpcyv9gkLBt2/zOkli6p0yo+YSOG9aWNTL
	 QZihrD6OrUB556gejrZlFMsikfsg4lz0uCllr8/lbQfd4i94UUwBMSj4hy+WsfqeNE
	 1quK/O/2Nx29g==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com
 [209.85.208.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id F12603B29E
 for <cake@lists.bufferbloat.net>; Sun, 31 May 2020 13:27:00 -0400 (EDT)
Received: by mail-lj1-f179.google.com with SMTP id z6so5212941ljm.13
 for <cake@lists.bufferbloat.net>; Sun, 31 May 2020 10:27:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=5eD/JunAKMAPKLeiEsuP1iPHF6Syc4TBIGxWriv2Ybs=;
 b=HC44NeHP+Vb5esBJcsQYa4jJuCrsoyWlX3HnbZyhHr2hc3GZe6Km8ZoDAtcecsBvfg
 q1CzO/nZklO4wJTM+B5zyOAZkrQXs8uwErvPyw35Zr1vd9fDQ3eHEhYMS3tKkrdWEVtU
 vV1NxQOl1KH6DNpA4HepsqUQyi5nt31SMx7IHV/305aDCvJyA51csBmkwIW7ML4Swqak
 PiuNw1KXwWOTvAQUKFBqzBmgCDfYqQi/xOR2Wj6egRmj+gv1q3vHPxYnlg1BOpNNFmug
 mmelD4Io6DnVyo22A5P6/JCRlW35J+lS04ImdJilEcaUN7n+h0INcso8bdsRRbZ4h8il
 mgpQ==
X-Gm-Message-State: AOAM530/Rn/Rh3ZMpsoXmfDpgy9XidWj8RNqOatitA42X7fxHjpo6vy+
 y5YcKFrWbgNBWn47Ed11B77H+oJKKX1c6vIKSF6254MXizA=
X-Google-Smtp-Source: ABdhPJw/L2icRUYyV6nBVmJx83BCxD5gDJzKbmTomttrDcadIGMdHWRO0fN32ceSPtZjL7NZeEy0GJMBTXDFrymz1d8=
X-Received: by 2002:a05:651c:332:: with SMTP id
 b18mr3530243ljp.432.1590946019509; 
 Sun, 31 May 2020 10:26:59 -0700 (PDT)
MIME-Version: 1.0
References: <5136DAB5-B975-4D36-948D-A5A4167A8FC7@darbyshire-bryant.me.uk>
 <30B03A82-420A-4A9A-899B-8549692AF9DC@darbyshire-bryant.me.uk>
 <2BE61C3D-EED3-405A-A7AF-BA7B7B5B8B03@darbyshire-bryant.me.uk>
 <CAJnXXogEindF=KvVOZUVa1VeZGDVA8hCNfaBAmh6HkJ_sjwPZg@mail.gmail.com>
 <7D02924D-1B16-4274-8BBF-6CBAA59CBB59@darbyshire-bryant.me.uk>
In-Reply-To: <7D02924D-1B16-4274-8BBF-6CBAA59CBB59@darbyshire-bryant.me.uk>
From: John Yates <john@yates-sheets.org>
Date: Sun, 31 May 2020 13:26:48 -0400
Message-ID: <CAJnXXogZHu6Rv2RdVtZPh0MKrJL5UAmHsACDV2rG7Uq6KW74gw@mail.gmail.com>
To: Kevin Darbyshire-Bryant <kevin@darbyshire-bryant.me.uk>
Subject: Re: [Cake] Playing with ingredients = ruined the CAKE
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
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gU3VuLCBNYXkgMzEsIDIwMjAgYXQgMTowOCBQTSBLZXZpbiBEYXJieXNoaXJlLUJyeWFudAo8
a2V2aW5AZGFyYnlzaGlyZS1icnlhbnQubWUudWs+IHdyb3RlOgo+IEkgaGF2ZSBhYnNvbHV0ZWx5
IG5vIGlkZWEsIGRvbuKAmXQgYXBwZWFyIHRvIGhhdmUgdGhhdCB0aHJlYWQgOi0pCgpNZWEgY3Vs
cGEuICBTaG91bGQgaGF2ZSBpbmNsdWRlZCB0aGlzIGxpbmsgdG8gdGhlIHRocmVhZDoKCmh0dHBz
Oi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L3BpcGVybWFpbC9tYWtlLXdpZmktZmFzdC8yMDIwLU1h
eS8wMDI4NjAuaHRtbAoKL2pvaG4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQK
aHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=
