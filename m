Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B38342AA9B
	for <lists+cake@lfdr.de>; Tue, 12 Oct 2021 19:18:11 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id DC7C73CB39;
	Tue, 12 Oct 2021 13:18:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1634059089;
	bh=/+3xqdsvEt4XfTiateGBkv9Fo2uyY+Lmue9IVhhUb1Y=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=jCVlVhQUIBk3CDWcdWraGCqo4ctWkByEontezl0zGk2qAXmdYuR5O9FfZIedNFkTd
	 0kpOszdwzpwXhGlAad5wjpJ4FK/AaToD9xWFourUGPLEzhqbq+9XSbT/ejW4huOId5
	 Ma9xVJwcTQ64WKLs0T8uEQXYS/2Hoex1qyWa+wB6c3xIksalPvXbqSh6AvnkPJMddb
	 DyQ2GZzbt+vsP5lH/DBnvojF1DmSylY5fo0A9uUB+WjqmGUCCzmMZzwALMSA75s5AA
	 yKxaNhRB+iAbzoaJgFiaulCmueAJLY7juUkwHThzXjt5tzROF4rRRNX6WIlrI6g3p2
	 qz9iNsJmXdk2g==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x132.google.com (mail-il1-x132.google.com
 [IPv6:2607:f8b0:4864:20::132])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 4127F3CB35
 for <cake@lists.bufferbloat.net>; Tue, 12 Oct 2021 13:18:08 -0400 (EDT)
Received: by mail-il1-x132.google.com with SMTP id d11so22409759ilc.8
 for <cake@lists.bufferbloat.net>; Tue, 12 Oct 2021 10:18:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=28jLKqEKP2prXcsL9b3Up8dtqmjp54NXeOtstwVewjM=;
 b=ZT1X5QrDBvlS08er8P+yCJ3Kq6LQ+Ll1OSGykLqLwdhRWfXVlHxh0U2ianDCxkiQR5
 dMfu0Vo11nre/dSLBVJ8Ngi+NO14z9tLzujKAK4LfuB4GFQlkcSDKY+lGwtw2lRuJH8L
 OVy9If/ihwPLjdmuqz0pNfEiKb0iiQNhMLDqTy/PR/jdsNwdxQt7hfipa7Tex4Z7gyoU
 NUhvQS8ueWvmFUxcDEwe01kd8MrabekotaiT/QejyEA919HI88y4i/dQ6vl2sW6oZ3IE
 fgPqe7fkcFq85QMHLUwBEDNJaz0Qy2AWYXCkPfoeMJ5cD02NK/sibs9OxVg11XXYs4ba
 yBAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=28jLKqEKP2prXcsL9b3Up8dtqmjp54NXeOtstwVewjM=;
 b=LqVwQDgFoPNh3j27O71VGUYOXyriSrXu0d6S4EE9JKQLnoh8HGSrgCpULeG8yBcJQt
 jMJjoyClH0+gZyhSsYioCUnnGL2fTSgxecCqVlqXqchBOKNded7egiq2vL5Z7/mf5NdR
 /zZdkzxtm4K97MKqollLzfsQFHxPLd+dgmfLyEDNVKR2pFRSTkmUS5tZkpEx9BvnvxRj
 mohPjY3SHl2f8mG9u4xhTZbQVqlypIjGVYFd49AElG+Dlk19nVgQF98rBEkMpfaaLeyr
 EMonrNiVjnLSokdUXGMPfuRXwTm+VaOmmkfV+G+nWlbPrfYIBhscAEKBezU8SEULi5i1
 LlNw==
X-Gm-Message-State: AOAM532uLVWpmc4cNry6iwzI1oZGrxjKIBRVyHvrUO/386TxxJou7FbF
 G2mX4BYgkuYsth+GWVGwYFxdrp6yCt4S8ElVim+lPvhE3lI=
X-Google-Smtp-Source: ABdhPJwYiWsZ4YoTJEgd8GQ4Vt3c12AebiqOhC6gZeqwusenUWfYJyHgGRTBl5a4J8+T2LPiEnt4ic0fVBj4NbuteZ0=
X-Received: by 2002:a05:6e02:1885:: with SMTP id
 o5mr3493940ilu.221.1634059087166; 
 Tue, 12 Oct 2021 10:18:07 -0700 (PDT)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Tue, 12 Oct 2021 10:17:52 -0700
Message-ID: <CAA93jw5pne4tQWayj2bRM=P=EHWoE788spOQuEQMRexfpQ==mA@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] revisiting timer wheels
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

aHR0cHM6Ly9zYWVlZC5naXRodWIuaW8vZmlsZXMvY2Fyb3VzZWwtc2lnY29tbTE3LnBkZgoKaHR0
cHM6Ly9naXRodWIuY29tL2ZhY2Vib29rL2ZvbGx5L2Jsb2IvbWFzdGVyL2ZvbGx5L2lvL2FzeW5j
L0hIV2hlZWxUaW1lci5oCgotLSAKRml4aW5nIFN0YXJsaW5rJ3MgTGF0ZW5jaWVzOiBodHRwczov
L3d3dy55b3V0dWJlLmNvbS93YXRjaD92PWM5Z0xvNlhyd2d3CgpEYXZlIFTDpGh0IENFTywgVGVr
TGlicmUsIExMQwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xp
c3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
