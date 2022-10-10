Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 660F15FA7E2
	for <lists+cake@lfdr.de>; Tue, 11 Oct 2022 00:57:51 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 820113CB43;
	Mon, 10 Oct 2022 18:57:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1665442664;
	bh=XcsxweI4RhRcdlM/9wXj88Z7XdRXOLVDUvw8sjLxzes=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=g4hINxn67J+UepvQ+g2Sain1SiV228+F8IUw0CsGTfp+tTg0haMe/i4FmFsK7h1Zu
	 6GHNkafhw/85ypJmMarCNGz41RusE+Pb6El6b6EjSbRw8wC7IHPZ9LKyzgzFhBn1Ou
	 PvPSvRzSeldpKzEQAyDthpvbYHcZfet2yn2PqmSGynoV+svIj3pHN6HZhcMnlS6w7/
	 0/RcLJhA6BT8EaqYx+2b82onqbfKmwS3E/jJme1TCPwC2REHiOLMTsMW5pHdtWY1oQ
	 vg4UzH0xwkeeqHBMHRBrqwwdWNu2zJrlCy5ZOlwH83Y3jfqRm9sOpD/BKlY2I4qSGy
	 oGB9K6Uw4Cl/Q==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.lang.hm (unknown [66.167.227.145])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id A029F3B29D;
 Mon, 10 Oct 2022 18:57:43 -0400 (EDT)
Received: from dlang-mobile (unknown [10.2.2.70])
 by mail.lang.hm (Postfix) with ESMTP id 9C66A14EB1D;
 Mon, 10 Oct 2022 15:57:42 -0700 (PDT)
Date: Mon, 10 Oct 2022 15:57:42 -0700 (PDT)
To: Bob McMahon <bob.mcmahon@broadcom.com>
In-Reply-To: <CAHb6LvqHNv_R2Asn944Kx91Cud5J3XSM-c+PcK8Bz19uaMDynw@mail.gmail.com>
Message-ID: <q06231q2-n7qn-345s-np6r-p5717713q3po@ynat.uz>
References: <CAA93jw77h=ztEOzyADriH2PnswUDQiyNvBdsuFi+K5EexpoxUQ@mail.gmail.com>
 <CE784DAD-5012-4FD3-9E2D-B931CBF1EBF8@telenor.no>
 <E615B656-9AAA-4AD4-8507-C461659846C5@gmx.de>
 <BB4CAEC2-669B-4595-BE6A-26D365B70535@telenor.no>
 <72674884-9E0D-4645-B5F5-C593CC45A8F0@gmx.de>
 <CAHb6LvqHNv_R2Asn944Kx91Cud5J3XSM-c+PcK8Bz19uaMDynw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="===============2549596715540208338=="
Subject: Re: [Cake] [Bloat] [Make-wifi-fast] The most wonderful video ever
 about bufferbloat
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
From: David Lang via Cake <cake@lists.bufferbloat.net>
Reply-To: David Lang <david@lang.hm>
Cc: Cake List <cake@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Rpm <rpm@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--===============2549596715540208338==
Content-Type: text/plain; format=flowed; charset=US-ASCII

On Mon, 10 Oct 2022, Bob McMahon via Bloat wrote:

> I think conflating bufferbloat with latency misses the subtle point in that
> bufferbloat is a measurement in memory units more than a measurement in
> time units. The first design flaw is a queue that is too big. This youtube
> video analogy doesn't help one understand this important point.

but the queue is only too big because of the time it takes to empty the queue, 
which puts us back into the time domain.

David Lang

> Another subtle point is that the video assumes AQM as the only solution and
> ignores others, i.e. pacing at the source(s) and/or faster service rates. A
> restaurant that let's one call ahead to put their name on the waitlist
> doesn't change the wait time. Just because a transport layer slowed down
> and hasn't congested a downstream queue doesn't mean the e2e latency
> performance will meet the gaming needs as an example. The delay is still
> there it's just not manifesting itself in a shared queue that may or may
> not negatively impact others using that shared queue.
>
> Bob
>
>
>
> On Mon, Oct 10, 2022 at 2:40 AM Sebastian Moeller via Make-wifi-fast <
> make-wifi-fast@lists.bufferbloat.net> wrote:
>
>> Hi Erik,
>>
>>
>>> On Oct 10, 2022, at 11:32, Taraldsen Erik <erik.taraldsen@telenor.no>
>> wrote:
>>>
>>> On 10/10/2022, 11:09, "Sebastian Moeller" <moeller0@gmx.de> wrote:
>>>
>>>    Nice!
>>>
>>>> On Oct 10, 2022, at 07:52, Taraldsen Erik via Cake <
>> cake@lists.bufferbloat.net> wrote:
>>>>
>>>> It took about 3 hours from the video was release before we got the
>> first request to have SQM on the CPE's  we manage as a ISP.  Finally
>> getting some customer response on the issue.
>>>
>>>       [SM] Will you be able to bump these requests to higher-ups and at
>> least change some perception of customer demand for tighter latency
>> performance?
>>>
>>> That would be the hope.
>>
>>         [SM} Excellent, hope this plays out as we wish for.
>>
>>
>>>  We actually have fq_codel implemented on the two latest generations of
>> DSL routers.  Use sync rate as input to set the rate.  Works quite well.
>>
>>         [SM] Cool, if I might ask what fraction of the sync are you
>> setting the traffic shaper for and are you doing fine grained overhead
>> accounting (or simply fold that into a grand "de-rating"-factor)?
>>
>>
>>> There is also a bit of traction around speedtest.net's inclusion of
>> latency under load internally.
>>
>>         [SM] Yes, although IIUC they are reporting the interquartile mean
>> for the two loaded latency estimates, which is pretty conservative and only
>> really "triggers" for massive consistently elevated latency; so I expect
>> this to be great for detecting really bad cases, but I fear it is too
>> conservative and will make a number of problematic links look OK. But hey,
>> even that is leaps and bounds better than the old only idle latency report.
>>
>>
>>> My hope is that some publication in Norway will pick up on that score
>> and do a test and get some mainstream publicity with the results.
>>
>>         [SM] Inside the EU the challenge is to get national regulators and
>> the BEREC to start bothering about latency-under-load at all, "some
>> mainstream publicity" would probably help here as well.
>>
>> Regards
>>         Sebastian
>>
>>
>>>
>>> -Erik
>>>
>>>
>>>
>>
>> _______________________________________________
>> Make-wifi-fast mailing list
>> Make-wifi-fast@lists.bufferbloat.net
>> https://lists.bufferbloat.net/listinfo/make-wifi-fast
>
>
--===============2549596715540208338==
Content-Type: text/plain; CHARSET=utf-8
Content-Transfer-Encoding: BASE64
Content-ID: <2252p1s1-394s-3oo8-7111-sn0246q80716@ynat.uz>
Content-Description: 
Content-Disposition: INLINE

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxvYXQgbWFp
bGluZyBsaXN0CkJsb2F0QGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZl
cmJsb2F0Lm5ldC9saXN0aW5mby9ibG9hdAo=

--===============2549596715540208338==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============2549596715540208338==--
