Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CAFB1B32C4
	for <lists+cake@lfdr.de>; Wed, 22 Apr 2020 00:50:17 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 683793CB42;
	Tue, 21 Apr 2020 18:50:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1587509416;
	bh=2+eys0kMc9Xl7Ep522GcVhrgmfQxSQIWoidEkcDAfLM=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SBRFqfKkxXIxfy/IzQgkXMhy9LvVS/fjkl6oUVoHta5bC22Ngcnrz62u5dkcjx8tI
	 sklSab54e1uzG5H8FHbBdCPikE5VVgFWW5M1dWpwpYTq+vhbEDt6wtwXVoFTUG7J0R
	 gLGmMV8o//n4e3MWuCbK6jPNNBl3JzKPsgAh7mG5nIvdwT9BGCq5x37uTA677Y1q3u
	 2jmnd0QjKaNk07Hmo58hTI9s0+vXyCh5/46BoauXIlgAdepwWiVIjRIMJDaDNJRHS7
	 2NynX/CyeQWUEJfYLlLQd8TyZPxm56sJIjQLN0jB508MBDO7vhDHc0R3TjusyvJqmu
	 WQPSJICPg/OGg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd34.google.com (mail-io1-xd34.google.com
 [IPv6:2607:f8b0:4864:20::d34])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 17B9B3B29D
 for <cake@lists.bufferbloat.net>; Tue, 21 Apr 2020 18:50:15 -0400 (EDT)
Received: by mail-io1-xd34.google.com with SMTP id u11so369189iow.4
 for <cake@lists.bufferbloat.net>; Tue, 21 Apr 2020 15:50:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OSBYrwxqygjzm0vSK+oO23snqnTvu0ZC6P/J346/N+E=;
 b=WEGiULHcTEahGMqqQVnDr3eM+sAxW1hrQi7Bcf4TO9dJf+WdrAGdQw6xOSxK68sW/g
 yIEapyn1y7sm9tGgWsJwOUi17OeoSvygbv/P4OmxUyzAdJ4ig8vi6MPUCURUunGjuPDF
 YZ1FEq8cYEK7le5xFSHb3cSwFVSVkUubgxKVjBCu0/mXhOtv4OuUcBymo3cMwYHQtmG7
 hXX70vQl4bmvxIoONlwHUJn/w7KmKNmT584odGcbDc8+1u3OGSEicy/YyD7f9MhmVi2W
 iAmohvSpfcBzJm5VLHT29aePna/vlMjR0LekYsYCNTJAL3eqDnvC6lyxcOXzHxONoXxr
 I18Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OSBYrwxqygjzm0vSK+oO23snqnTvu0ZC6P/J346/N+E=;
 b=HgFQ/d03NT0buFjfU5xi2vmJdxCP2jM/fXEyMyxHNIOyDQGuuUVI7MbRgf7lvgARp/
 noQhvYUi+6WLXsWXSfHQF3qEfcFwsVuCmNUtSiEbDklWHpgZqDz7jyfmOUurPh18O/PN
 MP6TGniQI/jPCwdvvvPMXCpSzjgCuZIbnjU+iE5IMzeWJO80S/QUi6j0JI3HE/g/mTnj
 +u8AgFg1aE95CTDygQRKaF1uftc8dG17Naz6wZIHz4CnvIYP9W5TIUEWVWursUemBeP5
 XlwnDmDHPKx/nPvsx6lYJQqaL6uGHca0rDy0eFtgQzVyvMdWOh4d5D3GEdJ3weN1bbNn
 2/iA==
X-Gm-Message-State: AGi0Pua3MsdKmP80WhAWY0p6ZVFbDmIt+H1Eq0SLmJu+HL+xAFXw8f8m
 A2+LK8+1A2LggLmco9eGIoxAJP8pa/LDBsINeC8=
X-Google-Smtp-Source: APiQypLm6XYChPB3LRNK3CPNaA8T1RSngCcc2ym80V/h0SrgZ95nLyrJRZ7qkyMSw7hwxku0ru1eSrvih/crqFAwl1M=
X-Received: by 2002:a6b:510d:: with SMTP id f13mr23161838iob.25.1587509414611; 
 Tue, 21 Apr 2020 15:50:14 -0700 (PDT)
MIME-Version: 1.0
References: <d3f45591-7359-47a6-bd0b-f89f9b49c5a7@www.fastmail.com>
 <75FEC2D9-BFC8-4FA2-A972-D11A823C5528@gmail.com>
 <CAA93jw7kfSjuQP2j8uX5-+hs2PBLNZ6c0=tV=PjZE50fQ1oFLw@mail.gmail.com>
 <AAAE0AE6-BA8C-4236-A68D-C5A4CF7DFEDA@slashdirt.org>
 <603DFF79-D0C0-41BD-A2FB-E40B95A9CBB0@gmail.com>
 <CAA93jw5yvybv+aXH4NLd1r_8xSP2CPwzeh0q6wm1c26jLPBxag@mail.gmail.com>
In-Reply-To: <CAA93jw5yvybv+aXH4NLd1r_8xSP2CPwzeh0q6wm1c26jLPBxag@mail.gmail.com>
From: Dave Taht <dave.taht@gmail.com>
Date: Tue, 21 Apr 2020 15:50:03 -0700
Message-ID: <CAA93jw4hr+YS+W371pEiVB0KLy88miHtXpTrnLpa85B5AjTA4A@mail.gmail.com>
To: Jonathan Morton <chromatix99@gmail.com>
Subject: Re: [Cake] Advantages to tightly tuning latency
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

SSBoYXZlIHNwZW50IFdBWSB0b28gbXVjaCB0aW1lIG9uIHJlZGRpdCB0aGlzIHdlZWsuCgpodHRw
czovL3d3dy5yZWRkaXQuY29tL3IvSG9tZU5ldHdvcmtpbmcvY29tbWVudHMvZzR1cHl3L2hvd190
b19kZXRlcm1pbmVfaWZfYV93aXJlbGVzc19yb3V0ZXJfb3JfYWNjZXNzLwoKT2ZmIHRvIHJlYnVp
bGQgb3BlbndydCEgSm9uLCBob3cncyBTQ0UgbG9va2luZz8gcmVhZHkgZm9yIGEgYmFja3BvcnQg
eWV0PwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtl
IG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1
ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==
