Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id EE548E2FC
	for <lists+cake@lfdr.de>; Mon, 29 Apr 2019 14:45:34 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id D462C3CB3A;
	Mon, 29 Apr 2019 08:45:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1556541933;
	bh=zYznpaLCmyS8d5f0dh1ChRBcFvLuQWF9WQCElt0VkVY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aDHYLxAX7Beux15IlGY8lxhn9f5QEeVgwnidJ8CiHi7y2PVomDr3lgl8w7BEWymfv
	 5g9n0IGQ/wI7xPmo/3hwHGKxMjrb0rdri1aLEoTYB6yxEA7hFul8WkTLc1eZ7M/FvA
	 2LhNYwwNy+yxGH9Yi/CyTj7+V3iVd6GJg6NjnC/MF9xrXZBqEy+rwcfl58OE6eVwc2
	 Qg3ttrB6pAsiTuM5PkHDbzSVmxv4qiUEboYlObjGOb95+UflqboPRDOg6Erh7/IptJ
	 lGCbizOxtoA1BKPs7WlglKyqUGmPW8mFJUgEVFoChHb6lDWZSfnrrTL7+QosCDIHrH
	 WvyE8o45IGAIg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 488993CB37
 for <cake@lists.bufferbloat.net>; Mon, 29 Apr 2019 08:45:32 -0400 (EDT)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 23F572075E;
 Mon, 29 Apr 2019 12:45:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556541931;
 bh=g39GJSANCTMsjSELOOQFuaxuOOo5JpWJMNvrX/VLyXE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vNtj82T+xiL4TD19Z0J+JP9ZmLAmMYlnljVWMm8YdWBechKuNOJFcpSRAZjkdsqQI
 OPr7+3GFnF164RYnCRJzkfqedXT/QSD+fMbv298xu2/UT3eQULM87ADXscxFrk/YR0
 OzJZE71l4qi4dYjTDqtvZqyIOksGPwINyRx9uMpk=
Date: Mon, 29 Apr 2019 14:45:29 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Toke =?iso-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@redhat.com>
Message-ID: <20190429124529.GE31371@kroah.com>
References: <155446010188.1460.16734711102827171744.stgit@alrua-x1>
 <155446010198.1460.1169444436924215431.stgit@alrua-x1>
 <20190429124310.GD31371@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190429124310.GD31371@kroah.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
Subject: Re: [Cake] [PATCH for-4.19 1/3] sch_cake: Simplify logic in
 cake_select_tin()
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
Cc: cake@lists.bufferbloat.net, David Miller <davem@davemloft.net>,
 stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gTW9uLCBBcHIgMjksIDIwMTkgYXQgMDI6NDM6MTBQTSArMDIwMCwgR3JlZyBLcm9haC1IYXJ0
bWFuIHdyb3RlOgo+IE9uIEZyaSwgQXByIDA1LCAyMDE5IGF0IDEyOjI4OjIyUE0gKzAyMDAsIFRv
a2UgSMO4aWxhbmQtSsO4cmdlbnNlbiB3cm90ZToKPiA+IGNvbW1pdCA0YjQ1NDQzMzIyMWRlNDQ1
ZjZkM2Q3M2IwYWMyN2I0ZjdkYTI1YjgzIHVwc3RyZWFtLgo+IAo+IEkgc2VlIG5vIHN1Y2ggY29t
bWl0IGluIExpbnVzJ3MgdHJlZS4gIFdoYXQgYW0gSSBzdXBwb3NlZCB0byBkbyB3aXRoCj4gdGhp
cz8KCkFoLCB0aGVzZSBhcmUgYWxyZWFkeSBpbiB0aGUgNC4xOSB0cmVlIG5vdywgbmV2ZXJtaW5k
Li4uCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2Ug
bWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVm
ZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
