Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 882422CB46
	for <lists+cake@lfdr.de>; Tue, 28 May 2019 18:12:06 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 403723CB38;
	Tue, 28 May 2019 12:12:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1559059925;
	bh=7KOB9JTUqYU/UXYgmaTK59rHEbYqXL7uBVUTVI8r+lo=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BGYgyIPBCrVz+bZJhDF8FXOiItq1Eq0leoyc1KqMtCphqCWUapV+KP/2q4lF+WuBc
	 CmBhG8003+3r28e275joNpITbW3YG7inkHEW/8zCtSVOK0teJYdIU2nXuNRhXTRmFh
	 iBBxgL0UbZhUR/oMgYXeMzsYx9r6r7+udmBjsj/z5SADYm0SO0xjfuMSVMBeS3JF2q
	 28nB0W4Lcul8txkfggxgsFiRpr3/uNpCsBGrD7ggBCWi9oBhltyeWhB/tocM23DNbD
	 CCduTzgaXodrCs6tY8WvEIzCewa0yRohpG7iitZ3D/qHpTZfGYrR2RybyJ8+3lWwKV
	 BMYmeROo8u+Mg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com
 [IPv6:2a00:1450:4864:20::331])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 7008D3B29E
 for <cake@lists.bufferbloat.net>; Tue, 28 May 2019 12:02:00 -0400 (EDT)
Received: by mail-wm1-x331.google.com with SMTP id d17so3564725wmb.3
 for <cake@lists.bufferbloat.net>; Tue, 28 May 2019 09:02:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uP+X6CLAR5ihOYgarlRBZFY24hDmrsh3/yfRunEcp8w=;
 b=Ci2K/NXzoPqliveAuprmX0xD47KVoGoJDuwabgKb7d8dNalwUfutwRNXleRxyGBvAR
 cvsNPgXsk7HEFGc9kg+GPt4bw/Iq0b7NTeFa87FAVyJKF7a1Q5QL3sLdpOA2t8cZj6r6
 +9GQtJURSgv5NJ9F/oWVN1hECA+CWw3Yr4WZKxmiW6j2ACCV/cOrnJ0dkv/BmFiYMHGY
 Xkj9NtD4Hwl2O+cuc/3YNtQpBGRded/xOpaUj/4ZgsqncuVx5Dr2FegaWuvcRceYvnsK
 CyIHRc8C71lyycewNNv4Td+4voVHoccxrVDZZ74CrNC9/dthTluB9T4jMc9Efg8UkvzF
 sEgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uP+X6CLAR5ihOYgarlRBZFY24hDmrsh3/yfRunEcp8w=;
 b=YCG7SWapVVxdx9IumBaT+ZvRksGa9jGmuHxNuwBW8aHrDPaw3s6RugN57h6ygVtvge
 3+D5QiUpDyOKUk1TTlUWxuCWJwlv4B8VOmkSQ1iqctD3mAA1tE/sHtw2AciktICv3xm/
 /XbxbsNfzZkEi/6VcYk+VwCD+xCsoAIhjou5bBBKqXcnOZeveNc9+fk0a84NFNvvvn1y
 eVc6Zzuca/dmqnVWeElU2n/AtGp8IwS7F4lKaMEj3M87h42kQEtkIWvFsjYkNd+CcPZP
 a/7tVQPqXg/C9G1a280H600/LzqDP5bSt79ERkXBbgadK7GrF8I6/XcVolmDR/KFbJFw
 zwxg==
X-Gm-Message-State: APjAAAVPRP/P7etpE2TJpDbJCZrADuBcqy206/uma5ivjplK7STES/2s
 trXCfEp312t1cUdnHXgFZNFcppg+EuvUML6LynI=
X-Google-Smtp-Source: APXvYqzl/hfkNLgkDKnZ7veZXd+da650JltEI0Es4rD3jS8I20F7avQ8GNuRHlWyhLLks10dIwng4msymAIOXelTAaY=
X-Received: by 2002:a1c:cb0c:: with SMTP id b12mr3432043wmg.86.1559059318980; 
 Tue, 28 May 2019 09:01:58 -0700 (PDT)
MIME-Version: 1.0
References: <CAA5aLPgz2Pzi5qNZkHwtN=fEXEwRpCQYFUkEzRWkdT39+YNWFA@mail.gmail.com>
 <875zpvvsar.fsf@toke.dk>
In-Reply-To: <875zpvvsar.fsf@toke.dk>
From: Akshat Kakkar <akshat.1984@gmail.com>
Date: Tue, 28 May 2019 21:31:45 +0530
Message-ID: <CAA5aLPhrDbqJqfVVBWfCZ6TK0ZFMOSsqxK9DS9D1cd4GZJ0ctw@mail.gmail.com>
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>
X-Mailman-Approved-At: Tue, 28 May 2019 12:12:03 -0400
Subject: Re: [Cake] Cake not doing rate limiting in a way it is expected to
	do
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
Cc: cake@lists.bufferbloat.net, netdev <netdev@vger.kernel.org>,
 lartc <lartc@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SXQncyBhIGNvbnRyb2xsZWQgbGFiIHNldHVwLiBVc2VycyBjb25uZWN0ZWQgdG8gZW5vMiBhbmQg
c2VydmVyIG9uIGVubzEuCkxpbmsgc3BlZWQgMUdicHMuCk5vIGluZ3Jlc3Mgc2hhcGluZy4KU2lt
cGxlIGh0dHAgZG93bmxvYWQuCgpJIGFtIGhhdmluZyBtdWx0aXBsZSByYXRlcyByZXF1aXJlbWVu
dCBmb3IgbXVsdGlwbGUgdXNlciBncm91cHMsIHdoaWNoCkkgYW0gY29udHJvbGxpbmcgdXNpbmcg
dmFyaW91cyBjbGFzc2VzIGFuZCB0aHVzIHVzaW5nIGh0Yi4KCkp1c3QgdG8gbWVudGlvbiBvbmNl
IGFnYWluLCBmcV9jb2RlbCBpcyB3b3JraW5nIGl0J3MgZXhwZWN0ZWQgd2F5LgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApD
YWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9s
aXN0aW5mby9jYWtlCg==
