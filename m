Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id B81EC203933
	for <lists+cake@lfdr.de>; Mon, 22 Jun 2020 16:27:15 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 973D53CB42;
	Mon, 22 Jun 2020 10:27:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1592836034;
	bh=nD1o9ZvzmRWexTMYUjV3TxdokYHiiR3jaL32spXib6c=;
	h=To:References:In-Reply-To:List-Id:List-Post:From:List-Subscribe:
	 List-Unsubscribe:List-Archive:Reply-To:List-Help:Subject:From;
	b=g8MBdCigmpsByttkR/WPXPx3CNiyZzNL152dRKExIhKlDRFHCt10vMGelsFuGDFQl
	 8lDY4HMyLLgw1xCEB+6zwcXX2zmcylz+47BRPPKVQ25oMvA6Hpq5ol7xAk9HrQNY5b
	 ezmjXjZsaBlXRlS69E9tt5JWkSphkQmrpoLEdSKrCFK05MQcmJ7rUY7shpvsLyygCZ
	 +NI6DdpiT/rPEJowa+qAbuwC8deob1/H+oe6hK93XxaU5N+lNC2WBNyJHu2gKvZSeJ
	 8COX7uErbBg79IoBkF6SdNbpwVGmR6+oJxHuWtiRfJcIdRFCgcoE7Ql7Nctzluq+8j
	 Fzph47T7ca4PA==
To: cake@lists.bufferbloat.net
References: <CAFC8iJKY+1iuiTHuo5OditK7RtpqZ=bbap+gzdEuM=gt5fiNZw@mail.gmail.com>
In-Reply-To: <CAFC8iJKY+1iuiTHuo5OditK7RtpqZ=bbap+gzdEuM=gt5fiNZw@mail.gmail.com>
MIME-Version: 1.0
Message-ID: <mailman.626.1592836033.24343.cake@lists.bufferbloat.net>
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
From: Y via Cake <cake@lists.bufferbloat.net>
Precedence: list
X-Mailman-Version: 2.1.20
X-BeenThere: cake@lists.bufferbloat.net
List-Subscribe: <https://lists.bufferbloat.net/listinfo/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=subscribe>
List-Unsubscribe: <https://lists.bufferbloat.net/options/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=unsubscribe>
List-Archive: <https://lists.bufferbloat.net/pipermail/cake>
Reply-To: Y <intruder_tkyf@yahoo.fr>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
Subject: Re: [Cake] [CAKE] Rate is much lower than expected - CPU load is
 higher than expected
Content-Type: multipart/mixed; boundary="===============3398551301154662422=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============3398551301154662422==
Content-Type: message/rfc822
Content-Disposition: inline

Return-Path: <intruder_tkyf@yahoo.fr>
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from sonic308-44.consmr.mail.ir2.yahoo.com (sonic308-44.consmr.mail.ir2.yahoo.com [77.238.178.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by lists.bufferbloat.net (Postfix) with ESMTPS id 0F0D13B2A4
	for <cake@lists.bufferbloat.net>; Mon, 22 Jun 2020 10:27:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.fr; s=s2048; t=1592836032; bh=b37NSUdvkerGYgCO8JRnNf1IP7s6Waa5/RrShXPbLyY=; h=Subject:To:References:From:Date:In-Reply-To:From:Subject; b=DpM+pwD+SfKPxlnpnkKa2BYNQYh0kdh1+SZjzKLRAN6391paGLe2xWirmynmvvC/f0bki+gKFtz0FJCYM1zhQdmrGxM10rN/vBKm9j8TmJcYbYgnmvS2F3z5BFSDYSIE65dl9211w774mOHxMq6xjuJ/AB2JFoPU0DulVhEa2SfrLWU6DIi78KvsmmLLGnhRvCz71j4BpGJAi2q3DkG8IbLBA7mCqLcpitBQXrZj7FQrs5aPmVDfcF6wiUG2E8GjjLb30yzqOKFVcAZorKKI6c1OnHvfROffTI+N0pFjdwGX7s6OlPKf5OJ4tK9t3kp7HJwX041XGdzcmf8HqqSUCA==
X-YMail-OSG: N_6BpMEVRDvd.miR6A7lED5GPdAEx7ojsA--
Received: from sonic.gate.mail.ne1.yahoo.com by sonic308.consmr.mail.ir2.yahoo.com with HTTP; Mon, 22 Jun 2020 14:27:12 +0000
Received: by smtp411.mail.sg3.yahoo.com (VZM Hermes SMTP Server) with ESMTPA ID 65a622fe53d916d3d79f7e1e79711216;
          Mon, 22 Jun 2020 14:25:10 +0000 (UTC)
Subject: Re: [Cake] [CAKE] Rate is much lower than expected - CPU load is
 higher than expected
To: cake@lists.bufferbloat.net
References: <CAFC8iJKY+1iuiTHuo5OditK7RtpqZ=bbap+gzdEuM=gt5fiNZw@mail.gmail.com>
From: Y <intruder_tkyf@yahoo.fr>
Message-ID: <a0a7c1a9-93d5-2719-b786-59f99359e480@yahoo.fr>
Date: Mon, 22 Jun 2020 23:25:05 +0900
User-Agent: Mozilla/5.0 (X11; Linux armv7l; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CAFC8iJKY+1iuiTHuo5OditK7RtpqZ=bbap+gzdEuM=gt5fiNZw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Mailer: WebService/1.1.16138 hermes_yahoo Apache-HttpAsyncClient/4.1.4 (Java/11.0.7)


You should paste this result.

tc -s qdisc show dev eth0

Yutaka

On 22/06/2020 22:10, Jose Blanquicet wrote:
> Hi everyone,
> 
> We have an embedded system with limited CPU resources that acts as a
> gateway to provide Internet access from LTE to a private USB-NCM
> network (And also to a Wi-Fi private network but we will work on it
> later). Our problem is that the bandwidth on LTE and USB link is
> higher than what the system is able to handle thus it reaches 100% of
> CPU load when we perform a simple speed test from a device on the
> private network.
> 
> Therefore, we want to limit the bandwidth to avoid system getting
> saturated in such use-case. To do so, we thought to use the CAKE on
> the USB interface. For instance, we tried:
> 
>      tc qdisc replace root dev eth0 cake bandwidth 20mbit ethernet
> internet flowblind nonat besteffort nowash
> 
> It worked correctly and the maximum rate was limited but there are two
> things that are worrying us:
> 
> 1) The maximum rate reached after applying CAKE was in between 12Mbps
> and 15Mbps which is quite lower than the 20Mbps we are configuring, we
> were expecting around 18-19. Why? Is there something in the parameters
> we are doing wrong? Please take into account that our goal is to limit
> the rate but adding as little CPU load as possible.
> 
> 2) The CPU load added by CAKE was not negligible for our system. In
> fact, we compared the CPU load when limitation was done by CAKE and by
> the device on the private network, e.g. curl tool with parameter
> "--limit-rate". As a result, we found that the CPU load when using
> CAKE was 30%. Is there any way to make it lighter with a different
> configuration?
> 
> Thanks in advance for the support. Any suggestion is welcome.
> 
> Jose Blanquicet
> _______________________________________________
> Cake mailing list
> Cake@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/cake
> 

--===============3398551301154662422==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============3398551301154662422==--
