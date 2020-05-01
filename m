Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E4451C1DF6
	for <lists+cake@lfdr.de>; Fri,  1 May 2020 21:35:38 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id D74353CB39;
	Fri,  1 May 2020 15:35:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1588361736;
	bh=FeCGTRJLH47PzG+v2yy3Lu4W/v+3ZrRMlkZyYWZprIk=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kbdHujUC+HOhqxzPLTIFbOxpmIH5B54wRbWlW05fI9nCX193TjiAMfz0RgwBfVEYE
	 lT7UrQ5sy3O13HqjWJEsFFCe31B/L77QPRTGDSv+93MWKrNBS+j9wCDsyfrX/+RVgz
	 dWh4E2G5FHDB2++e+OXp5iEL2AIWkAumqBBISqdQk/5olkENmAclwxQYAwAOj4lNJy
	 U029SaazcyJKUL7zMf+OphwAT+deXEUiKZPFLp1f3AXiPiqZq1/B3rMfpfF+pWihUP
	 AWAgmEajdNlm+Irfco+7anU0cXkU73U8CkoGlsgFs9LmqJ002HuYj3M6YcEWbtYmnR
	 6EBnhgJRp30OA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from resqmta-ch2-06v.sys.comcast.net
 (resqmta-ch2-06v.sys.comcast.net [IPv6:2001:558:fe21:29:69:252:207:38])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 4E5CC3CB35
 for <cake@lists.bufferbloat.net>; Fri,  1 May 2020 15:35:35 -0400 (EDT)
Received: from resomta-ch2-16v.sys.comcast.net ([69.252.207.112])
 by resqmta-ch2-06v.sys.comcast.net with ESMTP
 id UbIkjFY6UaccEUbRej7Ipx; Fri, 01 May 2020 19:35:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=comcastmailservice.net; s=20180828_2048; t=1588361734;
 bh=Qb9+MQjV/7EQWHjAzBnh9O2WKBXx/+dY+XLBEC+73bU=;
 h=Received:Received:Received:Date:From:To:Subject:Message-ID:
 MIME-Version:Content-Type;
 b=L02GNlrJPzwXfwkhT77GDQYRfGbEsrPR9Kku1/HnVkyWklVYaSCLfpQXzal7mXL7t
 jZu+rwwo+nzI7Rt+1TBUfver3F7OzKq//+7GZsCVctmqdcLNpB+FpCc1GaOV0Fe9x0
 x2imOvjNrG1ueYA9eq4JCgYZZlkhG7t03FSCERMTkMtK4abmCqDkVvBz5DwFiPfHxE
 8xI1D3WqPZ2xBgmBVk1/6FKZY6go9htWdwU78EW2lIyeHdU2MKtazVQvjM6ua9p7ch
 EAF8i5daWTQm7X7cYtTZiG4EsNgZ1JZlQWXMapQL1drLP1Auo8oH3OzH9MgiKf2lXV
 lwAbQ9hjZuySA==
Received: from home.sewingwitch.com ([IPv6:2601:644:1:6c10::3f1])
 by resomta-ch2-16v.sys.comcast.net with ESMTPA
 id UbRBjR6AoJr4fUbRIjfYwx; Fri, 01 May 2020 19:35:12 +0000
X-Xfinity-VMeta: sc=-100.00;st=legit
Received: from [10.96.7.39] ([10.96.7.39]) (authenticated bits=0)
 by home.sewingwitch.com (8.14.7/8.14.7) with ESMTP id 041JYqX3005843;
 Fri, 1 May 2020 12:34:53 -0700
DKIM-Filter: OpenDKIM Filter v2.11.0 home.sewingwitch.com 041JYqX3005843
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sewingwitch.com;
 s=default; t=1588361694;
 bh=Qb9+MQjV/7EQWHjAzBnh9O2WKBXx/+dY+XLBEC+73bU=;
 h=Date:From:To:Subject:In-Reply-To:References:From;
 b=a8KPWKMW0JigWKyszQzU4Q6SONgzcS+NvxXRTeWBkLKjkOeljW3+udYNx+ZyZC+E5
 ShYIbieQay+FcZAdHfmrxSiQOwEZMwzJ7H5/izlU4SxYYV/Hb9/j1fm/n+8Nko2SlG
 W61rOaf1CmJeBZhx6pvm+vA7LTyUTyKNj66FSBu0=
Date: Fri, 01 May 2020 12:34:52 -0700
From: Kenneth Porter <shiva@sewingwitch.com>
To: bloat <bloat@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>
Message-ID: <532BA44C865386E73EE9DF59@[172.27.17.193]>
In-Reply-To: <CAA93jw5HbGBcy6uW0dLbjtLmp_g4SLdK8Ny7G8UvbX_d+H1yXg@mail.gmail.com>
References: <CAA93jw5HbGBcy6uW0dLbjtLmp_g4SLdK8Ny7G8UvbX_d+H1yXg@mail.gmail.com>
X-Mailer: Mulberry/4.1.0a3 (Win32)
MIME-Version: 1.0
Content-Disposition: inline; size=424
X-Scanned-By: MIMEDefang 2.84 on 10.96.0.132
Subject: Re: [Cake] [Bloat] dslreports is no longer free
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

LS1PbiBGcmlkYXksIE1heSAwMSwgMjAyMCAxMDo0NCBBTSAtMDcwMCBEYXZlIFRhaHQgPGRhdmUu
dGFodEBnbWFpbC5jb20+IAp3cm90ZToKCj4gaHR0cHM6Ly93d3cucmVkZGl0LmNvbS9yL0hvbWVO
ZXR3b3JraW5nL2NvbW1lbnRzL2diZDZnMC9kc2xfcmVwb3J0c19zcGVlZAo+IF90ZXN0X25vX2xv
bmdlcl9mcmVlLwo+Cj4gVGhleSByYW4gb3V0IG9mIGJhbmR3aWR0aC4KPgo+IE1lc3NhZ2UgdG8g
dXNlcnMgaGVyZToKPgo+IGh0dHA6Ly93d3cuZHNscmVwb3J0cy5jb20vc3BlZWR0ZXN0CgpJcyB0
aGVyZSBhbiBvcGVuIHNvdXJjZSBzcGVlZHRlc3Qgb2YgY29tcGFyYWJsZSBxdWFsaXR5IGFuZCB1
c2FiaWxpdHk/IEkgCmNvdWxkIHJ1biBvbmUgb24gbXkgTGlub2RlIGZvciBmcmllbmRzIGFuZCBm
YW1pbHkuCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlz
dHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
